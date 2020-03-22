class ApplicationController < ActionController::Base
  before_action :set_current_user
 
  
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
    end
  end

  
  def access_restriction
    if request.referer===nil
      redirect_to "/"
    end
  end


end