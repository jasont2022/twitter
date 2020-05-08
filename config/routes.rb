Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  
  devise_for :users, :path => 'accounts'

  post 'createfollowship/:from_user/:to_user', to: 'followships#create_followship', as: "create_followship"
  delete 'deletefollowship/:from_user/:to_user', to: 'followships#destroy_followship', as: "destroy_followship"

  resources :users, :only => [:index, :show] do
    resources :tweets, :only => [:show, :create, :destroy]
  end
end