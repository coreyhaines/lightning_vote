Rails.application.routes.draw do
  namespace :organizer do
    resources :events, only: [:new, :create, :edit, :update]
  end

  resource :current_user, :controller => "current_user", only: [:edit, :update, :show]

  resources :events, :controller => "public/events", only: [:show]

  namespace :public do
    resources :events, only: [] do
      resources :talks, only: [:new, :create]
    end
  end

  resource :session, only: [:destroy]

  post "/auth/identity/callback" => "sessions#create"

  root 'static_pages#homepage'

  get "/about", to: "static_pages#about", as: :about_page
end
