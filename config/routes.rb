Rails.application.routes.draw do
  root "home#top"
  
  get "users/belongs"=>"users#belongs"
  
  
  get "students/new_student"=>"students#new_student"
  post "students/create_student"=>"students#create_student"
  get "students/show_student"=>"students#show_student"
  
  
  get "companies/new_company"=>"companies#new_company"
  post "companies/create_company"=>"companies#create_company"
  get "companies/show_company"=>"companies#show_company"
  
  #resources :users
end
