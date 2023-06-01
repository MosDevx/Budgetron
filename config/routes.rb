Rails.application.routes.draw do
  resources :group_financial_transactions
  resources :financial_transactions
  resources :groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
