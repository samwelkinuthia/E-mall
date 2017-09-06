Rails.application.routes.draw do
  root "malls#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :malls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
