class ApplicationController < ActionController::Base
 before_action :set_current_user
 #before_action :access_restriction
  
  def set_current_user
    if session[:student_id]
      if @student.nil?
        @student = Student.find_by(id: session[:student_id])
      else
        @student
      end
    elsif session[:company_id]
      if @company.nil?
        @company = Company.find_by(id: session[:company_id])
      else
        @company
      end
    else
      return
    end
  end


  def authenticate_user
    if @current_user==nil
      redirect_to("/login")
    end
  end

  def access_restriction
    @url = request.referer
    if @url ==nil
      if @student
        redirect_to student_path(@student)    
      elsif @company
        redirect_to company_path(@company)
      else
        redirect_to "/users/login_select"  
      end
    end
  end

 
  
  
  
 
end



