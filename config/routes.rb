Rails.application.routes.draw do
  resources :talks, only: [:new, :create]
  resources :events, only: [:new, :create, :edit, :update]
end
