Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :groups
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  get "profiles/:id", to: 'profiles#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups do
    get 'dashboard', to: 'dashboards#display'
    get 'playlist', to: 'dashboards#new_playlist'
    post 'playlist', to: 'dashboards#add_playlist'
    resources :group_users, only: [:create]
    resources :messages, only: [:create]
  end

 resources :studios, only: [:index, :show, :new, :create] do
  resources :slots, only: [:new, :create]
end
  get '/users/auth/spotify/callback', to: 'users#spotify'
  get 'appointment/studios', to: 'appointments#studios'
  get 'appointment/studios/:id', to: 'appointments#slots', as: 'appointment_studio'
  get 'filtered_groups', to: 'groups#filtered_index', as: 'filtered_groups'

  get '/my_groups', to: 'profiles#my_groups'
  get '/my_profile', to: 'profiles#my_profile'

  get '/content', to: 'pages#content'
  get '/features', to: 'pages#features'
  get '/pricing', to: 'pages#pricing'

end
