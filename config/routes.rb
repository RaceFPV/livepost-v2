Rails.application.routes.draw do
  devise_for :users
  root to: "home#landing"
  match 'dashboard', to: 'home#dashboard', via: 'get', as: 'dashboard'
end
