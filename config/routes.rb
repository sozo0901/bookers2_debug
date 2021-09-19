Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :users do
    resource :relationships, only: [:create, :destroy]

    get 'follower' => 'relationships#follower'
　  get 'followed' => 'relationships#followed'
  end





  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end


end