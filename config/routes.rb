Rails.application.routes.draw do
  devise_for :users

  get :about, to: 'about#show'
  get :contact, to: 'contact#show'
  resources :laptops, only: [:index, :show] do
    collection do
      get "search"
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'laptops/index'
  # get 'laptops/show'

  resources :carts, only: [:index, :create, :destroy], as: 'carts' do
    member do
      patch 'update_quantity', to: 'carts#update_quantity'
    end
  end


  root "laptops#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
