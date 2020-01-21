Rails.application.routes.draw do
  root "home#top"
  
  get "users/belongs"=>"users#belongs"
  
  
  get "students/new"=>"students#new"
  post "students/new"=>"students#create"
  
 # post "students/create_student"=>"students#create_student"
  get "students/show/:id"=>"students#show"
  
  
  get "companies/new"=>"companies#new"
  post "companies/new"=>"companies#create"
  get "companies/show/:id"=>"companies#show"
  
  #resources :users
end
