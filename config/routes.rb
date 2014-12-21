Rails.application.routes.draw do
  namespace :admin do
    resources :events, only: [:index, :new, :create, :edit, :update]
  end

  namespace :public do
    resources :events, only: [] do
      resources :talks, only: [:index, :create]
    end
  end
end
