Rails.application.routes.draw do

  resources :items, :orders, :carts, :cart_order_items

  # post "/login", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"
  # get "/me", to: "users#me"

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
