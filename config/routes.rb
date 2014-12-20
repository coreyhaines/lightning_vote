Rails.application.routes.draw do
  resources :talks, only: [:index, :new, :create]
  namespace :admin do
    resources :events, only: [:new, :create, :edit, :update]
  end
end
