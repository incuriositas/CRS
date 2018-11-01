Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :rent_posts
  root to: 'rent_posts#index'
  
  resources :users, only: [:show] do 
    post 'follow', to: 'users#follow', as: :follow, on: :member
  end
  
  get 'users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
