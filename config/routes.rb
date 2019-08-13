Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'events/index'
  resources :events
  root "events#index"
  resources :users
  
end
