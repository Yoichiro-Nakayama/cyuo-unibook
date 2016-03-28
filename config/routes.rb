Rails.application.routes.draw do
  devise_for :users
  resources :top, only: [:new]
  resources :promises, only: [:new]
  resources :laws, only: [:index, :show]
  resources :commerces, only: [:index, :show]
  resources :economicses, only: [:index, :show]
  resources :literatures, only: [:index, :show]
  resources :sciences, only: [:index, :show]
  resources :technos, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]
  resources :deals, only: [:show, :destroy]
  resources :products, only: [:show, :edit, :update, :new, :create, :index, :destroy]do
   collection do
      post 'search'
    end
     resources :chats, only: [:show, :create, :new]do
       resources :chat_messages, only: [:new, :show, :create]
    end  
  end
  root 'top#index'
end

# git push heroku master
