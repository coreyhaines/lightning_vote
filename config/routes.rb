Rails.application.routes.draw do
  resources :talks
  resources :events, only: [:new, :create]
end
