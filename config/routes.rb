Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[new create show index] do
    resources :reviews, only: %i[new create]
    # collection do
    #   get :top
  end
end

# Defines the root path route ("/")
# root "articles#index"
