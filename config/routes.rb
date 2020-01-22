Rails.application.routes.draw do
  root "home#top"
  
  get '/users/belongs', to: 'users#belongs'
  resources :students
end
