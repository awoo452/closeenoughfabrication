Rails.application.routes.draw do
  root "home#index"
  get "about", to: "about#index"
  get "contact", to: "contact#index"
  get "/terms", to: "legal#terms"
  get "/privacy", to: "legal#privacy"

  resources :about, only: [:index]
  resources :contacts, only: [:index]
  resources :projects, only: [:index, :show]
  resources :videos, only: [:index, :show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
