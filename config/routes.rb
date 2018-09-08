Rails.application.routes.draw do
  root 'tops#index'
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit]
  resources :titles do
    resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
