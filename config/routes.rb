Rails.application.routes.draw do
  resources :teachers, only: [:new, :create, :index], :controller => "timeclock"

  root 'timeclock#new'
end
