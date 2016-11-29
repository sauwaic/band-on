class ProfilesController < ApplicationController

  def my_groups
    @groups = current_user.groups
  end

end
