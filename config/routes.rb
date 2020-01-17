Rails.application.routes.draw do
  root "home#top"
  get "users/belongs"=>"users#belongs"
  get "users/new_student"=>"users#new_student"
  get "users/new_company"=>"users#new_company"
  post "users/create_student"=>"users#create_student"
  post "users/create_company"=>"users#create_company"
  get "users/show_student"=>"users#show_student"
  get "users/show_company"=>"users#show_company"
  
  #resources :users
end
