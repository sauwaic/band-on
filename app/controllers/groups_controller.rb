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
    group.user = current_user
    group.save
    redirect_to group_path(group)
  end

  def edit

  end

  def update
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end


  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def set_bike
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :description, :genre, :level)
  end

end
