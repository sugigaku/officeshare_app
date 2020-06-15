class ApplicationController < ActionController::Base
  # before_action :set_current_user
  before_action :configure_permitted_parameters_for_newcompany, only: [:create], if: :devise_controller?
  before_action :configure_permitted_parameters_for_updatecompany, only: [:update], if: :devise_controller?
 
  
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


  protected 
   
   def configure_permitted_parameters_for_newcompany
    added_attrs = [ :name, :place, :profile]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
   end

   def configure_permitted_parameters_for_updatecompany
    added_attrs = [ :name, :place, :profile, :icon]
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
   end
end