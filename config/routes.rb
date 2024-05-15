Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "profiles#index"
  get "/experience", to: "profiles#experience", as: :experience
  # get "/skills", to: "profiles#skills", as: :skills
  # get "/education", to: "profiles#education", as: :education
  # get "/contact", to: "profiles#contact", as: :contact

  # get "/back", to: "profiles#back", as: :back
end
