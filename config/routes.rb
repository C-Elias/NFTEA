Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :nfts, except: [:edit, :update]
  resources :bookmarks, only: [:index, :create]
  resources :users, only: [:show] do
    resources :lists, only: [:new, :create, :show, :index, :destroy]
  end
  resources :lists, only: [:show] do
    resources :bookmarks, except: [:edit, :show, :update, :index]
  end
end
