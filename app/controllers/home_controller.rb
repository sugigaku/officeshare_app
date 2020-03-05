class HomeController < ApplicationController
  def top
    session[:student_id]=nil
    session[:company_id]=nil
    render layout: "application_not_login"
  end
end
