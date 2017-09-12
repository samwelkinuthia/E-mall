Rails.application.routes.draw do
  resources :features
  resources :events
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  resources :contacts
  root "malls#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :malls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
