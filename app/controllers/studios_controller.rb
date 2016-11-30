class StudiosController < ApplicationController

  def index
    @studios = policy_scope(Studio).order(created_at: :desc)
  end

  def show
    @studio = Studio.find(params[:id])
    authorize @studio
    @available_slots = @studio.slots.where(taken: false)
  end

end
