Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  resources :categories do
    resources :products
  end
  root "categories#index"
end
