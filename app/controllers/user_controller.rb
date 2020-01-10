class UserController < ApplicationController
  def belongs
  end

  def new_student
  end

 

  def create_student
    @user=User.new(
      belongs:"student",
      userid: params[:userid],
      password: params[:password],
      name: params[:name], 
      college_name: params[:college_name], 
      grade: params[:grade], 
      profile: params[:profile],
      icon: "user_default.png")

  
    
   if @user.save
    session[:user_id]=@user.id
   
    redirect_to("/user/student/#{@user.id}")
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    @userid= params[:userid]
    @password= params[:password]
    render("user/new_student")
   end
   
  end

  def new_company
  end

  def create_company
    @user=User.new(
      belongs:"company",
      userid: params[:userid],
      password: params[:password],
      name: params[:name],
      profile: params[:profile],
      icon: "user_default.png"
    )
   if @user.save
    session[:user_id]=@user.id
    redirect_to("/user/company/#{@user.id}")
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    @userid= params[:userid]
    @password= params[:password]
    render("user/new_company")
   end

  end


  def student_mypage
   @user=User.find_by(id: session[:user_id])
   
  end

  def company_mypage
    @user=User.find_by(id: session[:user_id])
  end

  def login_form
    
  end
#studentとcompanyの書き分け残ってる
  def login
    @user=User.find_by(userid: params[:userid], password: params[:password])
    if @user
      session[:user_id]=@user.id
  #この辺適当
      if @user.belongs="student"
        redirect_to("/user/student/#{@user.id}")
      else
        redirect_to("/user/company/#{@user.id}")
      end
    else
      @error_message="ユーザIDまたはパスワードが間違っています"
      @userid= params[:userid]
      @password= params[:password]
      render("/login")
    end
  end

  def logout
   session[:user_id]=nil
   redirect_to("/login")
  end

end



