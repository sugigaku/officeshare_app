class CompaniesController < ApplicationController

  before_action  :set_company #:access_restriction, 

  def index
    @companies = Company.all
  end


  
  def create
    @company = Company.new(company_params)

   if @company.save
     session[:company_id] = @company.id
     redirect_to "/companies/#{@company.id}"
   else
    render 'new'
   end
  end
  
  def show
    @company = Company.find(params[:id]) #studentからの訪問用
  end

  def posts
    
  end

  
  def new
    @company=Company.new
    render layout: "application_not_login"
  end

  def login_form 
    render layout: "application_not_login"
  end

  
  def login
    @company = Company.find_by(name: params[:name], password: params[:password])
    if @company
      session[:company_id] = @company.id
      redirect_to "/companies/#{@company.id}"
    else
      @error_message = "名前またはパスワードが間違っています"
      render "login_form"
    end
  end


  def edit
  end


  def update
    @company = Company.find(@company.id)
    if @company.update(company_params)
      redirect_to "/companies/#{@company.id}"
    else
      render "edit"
    end 
  end



private

 def set_company

  if @company.nil?
     @company = Company.find_by(id: session[:company_id])
  else
     @company  
  end
 end
  
 
  def company_params
    params.require(:company).permit(:name, :password, :place, :email, :profile, :icon)
  end

  def access_restriction
    @url = request.referer
    if @url ==nil
      if session[:student_id]
        redirect_to 'student_path'    
      elsif session[:company_id]
        redirect_to 'company_path'
      else
        redirect_to "/"  
      end
    end
  end



end
