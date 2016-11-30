Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :groups
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups do
    get 'dashboard', to: 'dashboards#display'
    resources :group_users, only: [:create]
    resources :messages, only: [:create]
  end

  resources :studios, only: [:index, :show, :new, :create]

  get 'appointment/studios', to: 'appointments#studios'
  get 'appointment/studios/:id', to: 'appointments#slots', as: 'appointment_studio'

  get '/my_groups', to: 'profiles#my_groups'
end

