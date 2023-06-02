Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :financial_transaction_categories
  resources :financial_transactions
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  root to: 'pages#splash'


end
