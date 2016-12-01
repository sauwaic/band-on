class AppointmentsController < ApplicationController

  def studios
    # @studios = policy_scope(Studio).where.not(latitude: nil, longitude: nil).order(created_at: :desc)
    @studios = policy_scope(Studio).order(created_at: :desc)
    @hash = Gmaps4rails.build_markers(@studios) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
    authorize @studios
  end

  def slots
    @studio = Studio.find(params[:id])
    authorize @studio
    @available_slots = @studio.slots.where(taken: false)
    @studio_coordinates = { lat: @studio.latitude, lng: @studio.longitude }
  end
end
