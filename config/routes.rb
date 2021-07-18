Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :snaps, only: [:new, :create, :index, :show, :destroy]
  resources :newss, only: [:new, :create, :index, :show, :destroy]
end
#アイテム作る