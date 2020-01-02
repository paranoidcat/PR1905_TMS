Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root 'static_pages#home'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions' 
  }
  
  namespace :admins do
    resources :courses
    resources :subjects
    get 'dashboard', to: 'dashboards#show'
  end

  devise_for :users, controllers: 
  { registration: 'users/registration', 
    password: 'users/password',
    sessions:           "users/sessions",
    confirmations:      "users/confirmations",
    omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users

  devise_scope :user do
    delete 'sign_out', to: 'devise/sessions#destroy'
  end

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: 'static_pages#home'
end
