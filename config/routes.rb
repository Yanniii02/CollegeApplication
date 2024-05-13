Rails.application.routes.draw do
  resources :colleges do
    resources :departments
  end
  
  resources :departments do
    resources :laboratories
  end

  resources :laboratories  # Add this line for standalone laboratories resources

  # Other routes can be defined here if needed

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

