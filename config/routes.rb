Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'hotels#index'
  get 'hotels', to: 'hotels#index'

  resources :contacts

  resources :prefectures do
    resources :hotels
  end

  resources :hotels do
    resources :reviews
  end
end
