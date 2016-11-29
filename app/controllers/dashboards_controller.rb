class DashboardsController < ApplicationController

  before_action :set_group, only: [ :index ]

  def index
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

end
