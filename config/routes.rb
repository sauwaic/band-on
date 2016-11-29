Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups do
    resources :dashboards, path: 'dashboard', only: [:index]
    resources :group_users, only: [:create]
  end
end
