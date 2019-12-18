Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  namespace :admin do
    resources :courses
  end
  root 'static_pages#home'
  devise_for :users, controllers: { registration: 'users/registration', password: 'users/password' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
