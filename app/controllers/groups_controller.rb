class GroupsController < ApplicationController

  before_action :set_group, only: [ :show, :edit, :update, :destroy ]

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    group.admin = current_user
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
    params.require(:group).permit(:name, :description, :genre, :level)
  end

end
