Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  resources :contacts
  resources :malls do
    resources :events
    resources :features
  end
  resources :categories
  root "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :malls do
    resources :rooms do
      resources :products do
        collection { post :import}
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
