Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :nfts, except: [:edit, :update]
end
