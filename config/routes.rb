Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
