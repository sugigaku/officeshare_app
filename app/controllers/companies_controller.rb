class CompaniesController < ApplicationController

  before_action :set_company
 # before_action :set_user, only: %i[show]

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
   #set_company確認のため @company=Company.find(params[:id])
  end
  
  def new
    @company=Company.new
  end


private

 def set_company

  if session[:company_id]
    @company = Company.find_by(id: session[:company_id])
  end
  
 end

  
  #def set_user
   # id = params[:id] || params[:user_id]
    #@user = User.find(id)
  #end

  def company_params
    params.require(:company).permit(:name, :password, :place, :email, :profile)
  end


end
