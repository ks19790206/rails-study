Rails.application.routes.draw do
  resources :categolies
  root 'todos#index'

  resources :todos do
    member do
      patch 'status'
  end
 end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
