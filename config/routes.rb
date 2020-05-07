Rails.application.routes.draw do
  resources :followships
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users, :path => 'accounts'

  resources :users, :only => [:index, :show] do
    resources :tweets, :only => [:show, :create, :destroy]
  end
end
