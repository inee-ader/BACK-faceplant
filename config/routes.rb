Rails.application.routes.draw do

  resources :users

  resources :sessions, only: [:create]
  resources :registrations, only: [:create, :show]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  root to: 'static#home'

end
