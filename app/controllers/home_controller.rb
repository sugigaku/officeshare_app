class HomeController < ApplicationController
  def top
    session[:student_id]=nil
    session[:company_id]=nil
  end
end
