class ApplicationController < ActionController::Base
 # before_action :access_restriction
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  def authenticate_user
    if @current_user==nil
      redirect_to("/login")
  end
 

  
  
 
end

end

