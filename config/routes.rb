Rails.application.routes.draw do
 mount Avo::Engine, at: Avo.configuration.root_path
 get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  resources :categories do
    resources :products
  end
  root "categories#index"
end
