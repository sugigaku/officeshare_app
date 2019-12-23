class UserController < ApplicationController
  def belongs
  end

  def new_student
  end

  def new_company
  end

  def create_student
    @user=User.new(
      belongs:"student",
      userid: params[:userid],
      password: params[:password],
      name: params[:name], 
      college_name: params[:college_name], 
      grade: params[:grade], 
      icon: "user_default.png", 
      profile: params[:profile])

    @user
    
   @user.save
    session[:user_id]=@user.id
    flash[:notice]="ユーザを登録しました。"
    
    redirect_to("/user/#{@user.id}")
   
  end


  def student_mypage
   
   
  end

  def login_form
    @user=User.find_by(userid: params[:userid], password: params[:password])
    if @user
      flash[:notice]="ログインしました"
      session[:user_id]=@user.id
      redirect_to("user/student_mypage")
    else
      @error_message="ユーザIDまたはパスワードが間違っています"
      @name= params[:name]
      @password= params[:password]
      render("user/login_form")
    end
  end

  def login
    @user=User.find_by(userid: params[:userid], password: params[:password])
    if @user
      session[:user_id]=@user.id
      redirect_to("user/@user.id")
    else
      @error_message="ユーザIDまたはパスワードが間違っています"
      @userid= params[:userid]
      @password= params[:password]
      render("user/login")
    end
  end

  def logout
   session[:user_id]=nil
   redirect_to("user/login")
  end

end



