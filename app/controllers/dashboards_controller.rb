class DashboardsController < ApplicationController

  before_action :set_group, only: [ :display, :new_playlist, :add_playlist ]

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

  def new_playlist
    spotify_user = RSpotify::User.find(current_user.spotify_id)
    @playlists = spotify_user.playlists
    authorize @group
  end

  def add_playlist
    @group.playlist_name = params[:playlist_name]
    @group.playlist_path = params[:playlist_path]
    @group.save
    authorize @group
    redirect_to group_dashboard_path(@group)
    # Get the playlist chosen from the params and update group with playlist_name and playlist_path
  end

    private

    def set_group
      @group = Group.find(params[:group_id])
    end

  end
