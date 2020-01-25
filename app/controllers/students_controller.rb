class StudentsController < ApplicationController
   
before_action :set_student

  def new
    @student = Student.new
  end

  def index
    @students = Students.all
  end



  def create
    @student = Student.new(student_params)
    @student.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @student.save
    session[:student_id] = @student.id
    redirect_to "/students/#{@student.id}"
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new'
   end
  end
  
  def show
    # set_student効いてるか確認　@student=Student.find(params[:id])
    #find_by(id: session[:student_id])
    
  end
 
  #以下企業・学生分別の試み
  def belongs
    
  end
  
  private

  def set_student
    if session[:student_id]
      @student = Student.find_by(id: session[:student_id])
    end
  end


  def student_params
    params.require(:student).permit(:name, :password, :college, :grade, :profile)
  end
end