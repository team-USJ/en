Rails.application.routes.draw do
  root "homes#top"
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users
  resources :groups do
    get "join" =>"groups#join"
  end
  get "musics/groups" => "musics#groups"
end
