Rails.application.routes.draw do
  resources :tag_lists
  resources :tags
  resources :users
  resources :contents
  resources :titles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
