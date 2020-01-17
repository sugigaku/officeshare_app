class StudentsController < ApplicationController
   
  
  #before_action :set_user, only: %i[show]

  def new_student
    @student = Student.new
  end

  def index
    @users = User.all
  end

  def show; end

  def create_student
    @student = Student.new(student_params)
    @student.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @student.save
     redirect_to "users/show_student"
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new_student'
   end
  end
  
  def show_student
    
  end
  
  def create_company
    @company = Company.new(company_params)
    @company.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @company.save
     redirect_to "users/show_company"
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new_company'
   end
  end
  
  def show_company
    
  end
  
  #以下企業・学生分別の試み
  def belongs
    
  end
  
  def new_company
    @company=Company.new
  end

=begin
private

  def set_user
    id = params[:id] || params[:user_id]
    @user = User.find(id)
  end

  def user_params
    params.require(:user).permit(:name, :password, :college_name, :grade, :profile)
  end


=end
end