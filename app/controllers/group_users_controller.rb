class GroupUsersController < ApplicationController

  before_action :set_group, only: [ :create ]

  def create
    group_user = GroupUser.new(group_user_params)
    group_user.group = @group
    group_user.user = current_user
    group_user.save
    redirect_to group_dashboards_path(@group)
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def group_user_params
    params.require(:group_user).permit(:instrument_id)
  end

end
