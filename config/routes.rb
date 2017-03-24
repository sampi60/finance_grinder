Rails.application.routes.draw do
  devise_for :users

  get 'categories' => 'site#categories', as: 'categories'
  get 'transactions' => 'site#transactions', as: 'transactions'

  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :create, :show]
      resources :transactions, only: [:index]
    end
  end

  root 'site#transactions'
end
