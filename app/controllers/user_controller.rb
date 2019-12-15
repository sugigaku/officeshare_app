class UserController < ApplicationController
  def belongs
  end

  def new_student
  end

  def new_company
  end

  def create_student
    @user=User.new(
      userid: params[:userid], 
      name: params[:name], 
      college_name: params[:college_name], 
      grade: params[:grade], 
      icon: params[:icon], 
      profile: params[:profile])
    
   @user.save
    session[:user_id]=@user.id
    flash[:notice]="ユーザを登録しました。"
    
    redirect_to("/user/#{@user.id}")
   
  end


  def student_mypage
   @user=User.find_by(id: params[:id])
   
  end

  def login_form
    @user=User.find_by(userid: params[:userid], password: params[:password])
    if @user
      flash[:notice]="ログインしました"
      session[:user_id]=@user.id
      redirect_to("user/student_mypage")
    else
      @error_message="登録名またはパスワードが間違っています"
      @name= params[:name]
      @password= params[:password]
      render("user/login_form")
    end

  end

end



