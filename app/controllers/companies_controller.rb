class CompaniesController < ApplicationController
  before_action :access_restriction


  def index
    redirect_to "/"
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
  

  end

  def login_form 
    
  end

  
  def login
    @company = Company.find_by(email: params[:email], password: params[:password])
    if @company
      session[:company_id] = @company.id
      redirect_to "/companies/#{@company.id}"
    else
      session[:company_id] = nil
      @error_message = "メールアドレスまたはパスワードが間違っています"
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

  def rooms_index
    @rooms = Room.where(post_id: @company.posts.ids)
  end

  


private

  def company_params
    params.require(:company).permit(:name, :password, :place, :email, :profile, :icon)
  end

  
 
end

