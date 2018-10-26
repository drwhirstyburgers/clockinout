Rails.application.routes.draw do
  resources :teachers

  root 'teachers#new'
end
