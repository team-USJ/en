Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users
  resources :groups
end
