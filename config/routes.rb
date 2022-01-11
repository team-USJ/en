Rails.application.routes.draw do
  root "homes#top"
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users
end
