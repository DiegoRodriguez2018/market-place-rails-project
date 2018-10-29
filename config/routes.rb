Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'pages#welcome'
  get '/about' , to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
