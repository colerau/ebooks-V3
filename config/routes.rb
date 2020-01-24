Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'

  resources :books, :reviews, :users, :downloads, :book_authors, :authors

  root to: "books#index"
  get '/signup', to: "users#new", as: "signup"

end

