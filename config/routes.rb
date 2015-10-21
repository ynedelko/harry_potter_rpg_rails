Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :areas do
    resources :locations
  end
  resources :locations do
    resources :items
  end

  resources :admin, :only => [:index]
end
