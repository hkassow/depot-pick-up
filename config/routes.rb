Rails.application.routes.draw do

  resources :items, :orders, :carts, :cart_order_items
  post '/login', to: 'sessions#create'
  post '/employee-login', to: 'sessions#create_employee'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'user#show'
  
  #rerouting to home path
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
