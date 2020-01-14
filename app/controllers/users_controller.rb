class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show; end

  def create
    @user = User.new(user_params)
    @user.icon = "user_default.png" # TODO: ここも本当ならおかしいけど後で直す

   if @user.save
     redirect_to user_path(@user)
   else
    @error_message="入力されたユーザーIDが既に使用されているまたはパスワードが入力されていないため登録できません"
    render 'new'
   end
  end

  private

  def set_user
    id = params[:id] || params[:user_id]
    @user = User.find(id)
  end

  def user_params
    params.require(:user).permit(:name, :password, :college_name, :grade, :profile)
  end
end
