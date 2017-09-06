Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'
  devise_for :users
  resources :malls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
