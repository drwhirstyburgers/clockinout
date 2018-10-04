Rails.application.routes.draw do
  get 'timeclock/index'

  root 'timeclock#new'
end
