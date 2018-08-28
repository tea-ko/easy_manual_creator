Rails.application.routes.draw do
  get 'sessions/new'
  resources :tag_lists
  resources :tags
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit]
  resources :contents
  resources :titles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
