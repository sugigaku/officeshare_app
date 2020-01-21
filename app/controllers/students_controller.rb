class StudentsController < ApplicationController
   
  
  #before_action :set_user, only: %i[show]

  def new
    @student = Student.new()
  end

  def index
    @users = User.all
  end

  def show; end

  def create
    @student = Student.new(student_params)
    @student.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @student.save
     redirect_to "students/show/#{@student.id}"
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new'
   end
  end
  
  def show
    
  end
 
 
 
  
  #以下企業・学生分別の試み
  def belongs
    
  end
  
 


private

  def set_user
    id = params[:id] || params[:user_id]
    @user = User.find(id)
  end

  def student_params
    params.require(:student).permit(:name, :password, :college, :grade, :profile)
  end


end