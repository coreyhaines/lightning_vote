Rails.application.routes.draw do
  namespace :admin do
    resources :events, only: [:index, :new, :create, :edit, :update] do
      resources :eventtalk, only: [:new, :create, :edit, :update]
    end
  end

  resource :current_user, :controller => "current_user", only: [:edit, :update]

  resources :events, :controller => "public/events", only: [:show]

  namespace :public do
    resources :events, only: [] do
      resources :talks, only: [:index, :create]
    end
  end

  post "/auth/identity/callback" => "sessions#create"
end
