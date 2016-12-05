class DashboardsController < ApplicationController

  before_action :set_group, only: [ :display ]

  def display
    @message = Message.new
    authorize @group
    @group_admin = @group.admin
    @group_members = @group.users.reject {|user| user == @group.admin}
    @hash = Gmaps4rails.build_markers(@group.studio) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
  end

    private

    def set_group
      @group = Group.find(params[:group_id])
    end

  end
