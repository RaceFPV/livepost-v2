Rails.application.routes.draw do
  devise_for :users
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
  
  root to: "home#landing"
  
  match 'dashboard', to: 'home#dashboard', via: 'get', as: 'dashboard'
end
