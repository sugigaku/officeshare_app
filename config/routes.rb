Rails.application.routes.draw do
  devise_for :companies
  get 'messages/create'
  get 'rooms/show'
  root "companies#show"
  get '/home/select', to: 'home#select'
  get '/home/login_select', to: 'home#login_select'
  get '/top', to: 'home#top'

  
  get '/users/select', to: 'users#select'
  get '/users/login_select'

  get '/students/login_form', to:'students#login_form'
  post '/students/login', to:'students#login'
  get '/students/rooms_index', to: 'students#rooms_index'
  get '/students/application_posts', to: 'students#application_posts'
  resources :students
  

  get '/companies/login_form', to:'companies#login_form'
  post '/companies/login', to:'companies#login'
  get '/companies/posts', to: 'companies#posts'
  get '/companies/rooms_index', to: 'companies#rooms_index'
  resources :companies
  

  resources :posts


  resources :rooms


  resources :messages

end
