Rails.application.routes.draw do

  get 'apis/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root "home#index"

  get "/pages/:page" => "pages#show"
  match '/contacts',     to: 'contacts#new',             via: 'get'

  resources "contacts", only: [:new, :create]


  resources :contacts

  resources :malls do
    resources :events
    resources :features
  end


  resources :categories

  resources :malls do
    resources :rooms do
      resources :products do
        collection { post :import}
      end
    end
  end

  namespace :api, defaults:{format: 'json'} do
    namespace :v1 do
      resources :malls do
        resources :rooms do
          resources :products
        end
      end
    end
  end
end
