class GroupsController < ApplicationController

  before_action :set_group, only: [ :show, :edit, :update, :destroy ]

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @group_user = GroupUser.new
  end

  def new
    @group = Group.new
    @slot_id = params[:slot_id]
  end

  def create
    group = Group.new(group_params)
    group.admin = current_user
    slot = Slot.find(params[:group][:slot_id])
    slot.group = group
    slot.taken = true
    slot.save
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
    @group.destroy
    redirect_to groups_path
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :description, :genre, :level, :photo)
  end

end
