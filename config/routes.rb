Rails.application.routes.draw do
  get 'user/belongs'=>"user#belongs"
  get "user/new_student"=>"user#new_student"
 post "user/create_student"=>"user#create_student"
 get "user/new_company"=>"user#new_company"
 post "user/create_company"=>"user#create_company"
  get "user/:id"=>"user#mypage"
  
  
  get "/login"=>"user#login_form"
  post "/login"=>"user#login"
  #postでログアウトできてないまま、getで暫定的に対応
  post "/logout"=>"user#logout"
  get "/logout"=>"user#logout"
  get "new_post"=>"user#new_post"
 

  get '/'=>"home#top"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
