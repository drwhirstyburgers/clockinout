Rails.application.routes.draw do
  resources :teachers, only: [:index, :new, :create]

  root 'teachers#new'
end
