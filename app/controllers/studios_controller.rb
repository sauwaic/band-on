class StudiosController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_action :set_studio, only: [ :show ]

  def index
   # @studios = policy_scope(Studio).where.not(latitude: nil, longitude: nil).order(created_at: :desc)
   @studios = policy_scope(Studio).order(created_at: :desc)
    @hash = Gmaps4rails.build_markers(@studios) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
  end

  def show
    @studio = Studio.find(params[:id])
    authorize @studio
    @available_slots = @studio.slots.where(taken: false).order(date: :asc)

    @studio_coordinates = { lat: @studio.latitude, lng: @studio.longitude }
    @hash = Gmaps4rails.build_markers(@studio) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end
  end

  def new
    @studio = Studio.new
    authorize @studio
  end

  def create
    studio = Studio.new(studio_params)
    authorize studio
    studio.save
    redirect_to studio_path(studio)
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
    authorize @studio
  end

  def studio_params
    params.require(:studio).permit(:name, :address, :price, :photo)
  end

end
