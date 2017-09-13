Rails.application.routes.draw do
  resources :categories
  root "malls#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :malls do
    resources :rooms do
      resources :products
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
