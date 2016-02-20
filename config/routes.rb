Rails.application.routes.draw do
  devise_for :users
  resources :laws, only: [:index, :show]
  resources :commerces, only: [:index, :show]
  resources :economicses, only: [:index, :show]
  resources :literatures, only: [:index, :show]
  resources :sciences, only: [:index, :show]
  resources :technos, only: [:index, :show]

  root 'top#index'
end


