class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :description, :experience, :genre])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :description, :experience, :genre])
  end

end
