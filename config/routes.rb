Rails.application.routes.draw do
  resources :talks, only: [:index, :new, :create]
  resources :events, only: [:new, :create, :edit, :update]

  namespace :public do
    resources :events, only: [] do
      resources :talks, only: [:index, :create]
    end
  end
end
