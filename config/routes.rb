Rails.application.routes.draw do
  get 'users/index'
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  resources :categories
  devise_for :users
  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
