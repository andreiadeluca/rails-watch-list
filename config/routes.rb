Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: :create
  end
  resources :movies
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
