Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: 'pictures#index'

  resources :pictures, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
