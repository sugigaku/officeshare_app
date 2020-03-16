class StudentsController < ApplicationController
   
before_action :set_student

def new
  @student = Student.new
  
end


def index
  redirect_to ""
  @students = Students.all
end



def create
  @student = Student.new(student_params)

 if @student.save
  session[:student_id] = @student.id
  redirect_to "/students/#{@student.id}"
 else
  render 'new'
 end
end


def show
  @student = Student.find(params[:id]) #companyからの訪問用
  
end



  def login_form 
    session[:student_id]=nil
    render layout: "application_not_login"
  end

  
  def login
    @student = Student.find_by(name: params[:name], password: params[:password])
    if @student
      session[:student_id] = @student.id
      redirect_to "/students/#{@student.id}"
    else
      @error_message = "名前またはパスワードが間違っています"
      render "login_form"
    end
  end

  def edit
    
  end

  def update
    @student = Student.find(@student.id)
    if @student.update(student_params)
      redirect_to "/students/#{@student.id}"
    else
      render "edit"
    end
  end

  def rooms_index
    @rooms = Room.where(student_id: @student.id)
  end

  def application_posts
    @rooms = Room.where(student_id: @student.id)
    
  end


  
  private

  def set_student
    if session[:student_id]
      @student = Student.find_by(id: session[:student_id])
    end
  end


  def student_params
    params.require(:student).permit(:name, :email, :password, :college, :grade, :profile, :icon)
  end
end