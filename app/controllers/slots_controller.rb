class SlotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_action :set_studio, only: [ :new, :create]

  def new
    @slot = Slot.new
    authorize @slot
  end

  def create
    slot = Slot.new(slot_params)
    authorize slot
    slot.studio = @studio
    slot.save
    redirect_to studio_path(@studio)
  end

  private

  def set_studio
    @studio = Studio.find(params[:studio_id])
    authorize @studio
  end

  def slot_params
    params.require(:slot).permit(:date, :start_time, :end_time)
  end


end
