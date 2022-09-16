Rails.application.routes.draw do

  resources :items, :orders, :carts, :cart_order_items, :users, :reviews
  post '/login', to: 'sessions#create'
  post '/employee-login', to: 'sessions#create_employee'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'user#show'
  get '/checkout/:id', to: "carts#checkout" 
  
  #rerouting to home path
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
