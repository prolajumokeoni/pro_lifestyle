Rails.application.routes.draw do
  devise_for :users
  
  resources :articles do
    resources :votes, only: %i[create destroy]
  end
  resources :categories
  resources :users, only: [:new, :create, :edit, :update]
  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
