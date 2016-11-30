class StudiosController < ApplicationController

  def index

      @studios = Studio.where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@studios) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
  end

  def show
    @studio = Studio.find(params[:id])
    @available_slots = @studio.slots.where(taken: false)
    @studio_coordinates = { lat: @studio.latitude, lng: @studio.longitude }
  end

end
