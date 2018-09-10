Rails.application.routes.draw do
  root 'tops#index'
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit]
  resources :contents
  resources :titles
  resources :categories do
    resources :titles do
      resources :contents
    end
  end
end
