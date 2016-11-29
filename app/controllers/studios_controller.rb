class StudiosController < ApplicationController

  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
    @available_slots = @studio.slots.where(taken: false)
  end

end
