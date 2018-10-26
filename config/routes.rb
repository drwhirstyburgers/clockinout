Rails.application.routes.draw do
  resources :teachers, only: [:new, :create, :show, :update]

  get '/teachers', to: 'teachers#index'

  root 'teachers#new'
end
