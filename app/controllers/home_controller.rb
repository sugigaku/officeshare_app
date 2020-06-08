class HomeController < ApplicationController

  def top
    session[:student_id]=nil
    session[:company_id]=nil
  end

  def select
  end


  def login_select
  end
  

end
