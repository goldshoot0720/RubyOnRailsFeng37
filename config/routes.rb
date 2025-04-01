Rails.application.routes.draw do
  get 'render/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "render#index"
  get "bank3",to:"render#bank3"
  get "enroll3",to:"render#enroll3"
  get "udemy3",to:"render#udemy3"
end
