Rails.application.routes.draw do
  root "home#top"

  
  get '/users/select', to: 'users#select'
  get '/users/login_select'

  get '/students/login_form', to:'students#login_form'
  post '/students/login', to:'students#login'
  resources :students
  

  get '/companies/login_form', to:'companies#login_form'
  post '/companies/login', to:'companies#login'
  resources :companies
  


  resources :posts


end
