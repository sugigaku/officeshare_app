Rails.application.routes.draw do
  get 'user/belongs'=>"user#belongs"
  get "user/new_student"=>"user#new_student"
  get "user/new_company"=>"user#new_company"
 post "user/create_student"=>"user#create_student"
  get "user/:id"=>"user#student_mypage"
  get "user/login"=>"user#login_form"
 

  get '/'=>"home#top"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
