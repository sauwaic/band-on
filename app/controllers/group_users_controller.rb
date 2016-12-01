class GroupUsersController < ApplicationController

  before_action :set_group, only: [ :create ]

  def create
    group_user = GroupUser.new(group_user_params)
    group_user.group = @group
    group_user.user = current_user
    if group_user.save
      redirect_to group_dashboard_path(@group)
    elsif @group.users.include?(current_user)
      flash[:alert] = "You are already in the group"
      redirect_to group_path(@group)
    else
      flash[:alert] = "Error joining group"
      redirect_to group_path(@group)
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
    authorize @group
  end

  def group_user_params
    params.require(:group_user).permit(:instrument_id)
  end

end
