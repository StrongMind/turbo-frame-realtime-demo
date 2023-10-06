Rails.application.routes.draw do
  resources :comments
  resources :posts do
    resources :comments, module: :posts
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"

  # Defines the alternate path route ("/alternate/1")
  get "alternate/:id" => "posts#alternate", as: :alternate
  get "alternate/:id/comments" => "posts#alternate_comments", as: :alternate_comments

end
