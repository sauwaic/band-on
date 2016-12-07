
require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "
49de5d73fe1c44cba7cf754e69cb7796", "b9bae7beb755407391d5578c764209c6", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
