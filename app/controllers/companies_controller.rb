class CompaniesController < ApplicationController

  before_action :set_company

  def index
    @companies = Company.all
  end


  
  def create
    @company = Company.new(company_params)
    @company.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @company.save
     session[:company_id] = @company.id
     redirect_to "/companies/#{@company.id}"
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new'
   end
  end
  
  def show

  end
  
  def new
    render layout: "application_not_login"
    @company=Company.new
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



private

 def set_company

  if session[:company_id]
    @company = Company.find_by(id: session[:company_id])
  end
  
 end

  
  def company_params
    params.require(:company).permit(:name, :password, :place, :email, :profile)
  end


end
