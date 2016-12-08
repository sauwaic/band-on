class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  include Pundit

  after_action :verify_authorized, except: [:index, :filtered_index], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  before_filter :store_current_location, :unless => :devise_controller?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :description, :experience, :genre])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :description, :experience, :genre])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^messages$)/
  end

  def store_current_location
    store_location_for(:user, request.url)
  end

end
