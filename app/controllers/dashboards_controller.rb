class DashboardsController < ApplicationController

  before_action :set_group, only: [ :display ]

  def display
    @message = Message.new
    authorize @group
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

end
