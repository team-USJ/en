Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users
  resources :groups do
    get "join" =>"groups#join"
  end
  get "music/groups" => "musics#groups"
  
end
