class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

    if user.persisted?
      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  def spotify
    response = request.env['omniauth.auth']
    current_user.spotify_id = response['uid']
    if current_user.save
      flash[:success] = "Your Spotify Account has been linked."
      redirect_to root_path
    else
      flash[:alert] = "There was a problem linking your Spotify account."
      redirect_to to_path
    end
  end
end
