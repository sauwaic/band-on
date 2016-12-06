class ProfilesController < ApplicationController

  def my_groups
    @groups = current_user.groups + Group.where(admin: current_user)
    authorize @groups.first
  end

  def my_profile
    @user = current_user
    @groups = current_user.groups
    authorize @user
    authorize @groups
  end

  def show
    @user = User.find(params[:id])
    @groups = @user.groups
    authorize @user
  end

end
