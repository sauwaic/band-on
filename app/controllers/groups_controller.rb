class GroupsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_action :set_group, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:query]
      @studios = policy_scope(Studio).near(params[:query],20)
      @groups = []
      @studios.each do |studio|
        studio.groups.each do |group|
          @groups << group
        end
      end
      @groups.sort_by(&:name)
    else
      @groups = policy_scope(Group)
    end


  end

  def filtered_index
    @groups = Group.joins(slot: :studio).where('studios.address' => params[:address]).where('genre' => params[:genre]) if params[:genre].present?
    authorize @groups
    render 'index'

  end

  def show
    @group_admin = @group.admin
    @group_members = @group.users.reject {|user| user == @group.admin}

    @group_user = GroupUser.new

    @hash = Gmaps4rails.build_markers(@group.studio) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
  end

  def new
    @group = Group.new
    @group_user = GroupUser.new
    @slot_id = params[:slot_id]
    authorize @group
  end

  def create
    group = Group.new(group_params)
    group.admin = current_user
    slot = Slot.find(params[:group][:slot_id])
    slot.group = group
    slot.taken = true
    slot.save
    authorize group
    group.save
    group_user = GroupUser.new(user: current_user, group: group)
    group_user.instrument = Instrument.find(params[:group_user][:instrument_id])
    group_user.save
    redirect_to group_dashboard_path(group)
  end

  def edit
  end

  def update
    @group.update(group_params)
    redirect_to group_dashboard_path(@group)
  end


  def destroy
    @group.slot.taken = false
    @group.slot.save
    @group.destroy
    redirect_to groups_path
  end

  private

  def set_group
    @group = Group.find(params[:id])
    authorize @group
  end

  def group_params
    params.require(:group).permit(:name, :description, :genre, :level, :instrument_id, :photo)
  end

end
