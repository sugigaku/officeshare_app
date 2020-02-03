class UsersController < ApplicationController
  

  def select
    render layout: "application_not_login"
  end


  def login_select
    render layout: "application_not_login"
  end
  
  
end 

