class ProfilesController < ApplicationController

  def my_groups
    @groups = current_user.groups + Group.where(admin: current_user)
    authorize @groups.first
  end

end
