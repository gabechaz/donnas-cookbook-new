Rails.application.routes.draw do


  resources :instructions
  get '/users', to: 'users#index'
  post '/users/me', to: 'users#me'
  get '/users/:id', to: 'users#show'
  post '/users/login', to: 'users#login'
  post '/users', to: 'users#create'
  get '/books/:id', to: 'users#books'
  post '/users/logout', to: 'users#logout'
  post '/users/:page_count', to: 'users#users_page'

  get '/foods', to: 'foods#index'
  get '/foods/:id', to: 'foods#show'
  post '/foods', to: 'foods#create'

  get '/recipes', to: 'recipes#index'
  get '/recipes/:id', to: 'recipes#show'
  post '/recipes', to: 'recipes#create'

  get '/ingredients', to: 'ingredients#index'
  get '/ingredients/:id', to: 'ingredients#show'
  post '/ingredients', to: 'ingredients#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
