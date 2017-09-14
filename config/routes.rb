Rails.application.routes.draw do
  resources :malls do
    resources :events
  end
  resources :categories
  root "malls#index"
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
