class GroupsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_action :set_group, only: [ :show, :edit, :update, :destroy ]

  def index
    @groups = policy_scope(Group).order(created_at: :desc)
  end

  def filtered_index
    @groups = Group.joins(slot: :studio).where('studios.address' => params[:address]).where('genre' => params[:genre]) if params[:genre].present?
    render 'index'
  end

  def show
    @group_user = GroupUser.new
  end

  def new
    @group = Group.new
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
    redirect_to group_path(group)
  end

  def edit
  end

  def update
    @group.update(group_params)
    redirect_to group_path(@group)
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
    params.require(:group).permit(:name, :description, :genre, :level, :photo)
  end

end
