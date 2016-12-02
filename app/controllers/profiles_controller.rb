class ProfilesController < ApplicationController

  def my_groups
    @groups = current_user.groups + Group.where(admin: current_user)
    authorize @groups.first
  end

  def my_profile
    @user = current_user
    authorize @user
  end

end
