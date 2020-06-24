Rails.application.routes.draw do
  
  root "home#top"
  get '/home/select', to: 'home#select'
  get '/home/login_select', to: 'home#login_select'

  
  get '/users/select', to: 'users#select'
  get '/users/login_select'

  get '/students/login_form', to:'students#login_form'
  post '/students/login', to:'students#login'
  get '/students/rooms_index', to: 'students#rooms_index'
  get '/students/application_posts', to: 'students#application_posts'
  get 'show_company/:id(.:format)',to: 'students#show_company'
  resources :students
  

  get '/companies/login_form', to:'companies#login_form'
  post '/companies/login', to:'companies#login'
  get '/companies/posts', to: 'companies#posts'
  get '/companies/rooms_index', to: 'companies#rooms_index'
  get 'show_student/:id(.:format)',to: 'companies#show_student'
  resources :companies
  

  resources :posts

  get '/rooms/room_messages/:id', to: "rooms#room_messages", as: "room_messages"
  resources :rooms


  resources :messages

end
