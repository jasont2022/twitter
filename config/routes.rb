Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  
  devise_for :users, :path => 'accounts'

  post 'createfollowship/:from_user/:to_user', to: 'followships#create', as: 
  delete 'deletefollowship/:from_user/:to_user', to: 'followships#destroy', as: 

   # add/drop courses routes (see /controllers/registrations_controller.rb)
  post '/add_course/:user_id/:course_id', to: 'registrations#add_course', as: "add_course"
  delete '/drop_course/:user_id/:course_id', to: 'registrations#drop_course', as: "drop_course"

  resources :users, :only => [:index, :show] do
    resources :tweets, :only => [:show, :create, :destroy]
  end
end