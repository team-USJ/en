Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users
  resources :groups
  get "musics/groups" => "musics#groups"
end
