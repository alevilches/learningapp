Rails.application.routes.draw do
  #get 'lessons/show'
  #get 'lessons/new', to: 'lessons#new'
  #post 'lessons/create', to: 'lessons#create'
  #get 'lessons/edit'
  #get 'lessons/update'
  #get 'lessons/destroy'
  #get 'courses/index'
  #get 'courses/show'
  #get 'courses/new'
  #get 'courses/edit'
  #get 'courses/update'
  #get 'courses/index'
  #get 'courses/show'
  #get 'courses/edit'
  #get 'courses/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'lessons/check_answer', to: 'lessons#check_answer'
  root 'courses#index'
  resources :courses, only: %i[new show create]
  resources :lessons, only: %i[new show create]

  
  
end
