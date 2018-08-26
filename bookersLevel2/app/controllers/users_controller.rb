class UsersController < ApplicationController
before_action :authenticate_user!

  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.books
    @book = Book.new
  end

  def new
    @book = Book.new
  end

  def edit
    @user_image = User.find(params[:id])
  end

  def create
    @user_image = User.new(user_params)
    @user_image.user_id = current_user.id
    if @user_image.save
      redirect_to users_show_path, notice:"successfully"
    else
      render :edit
    end
  end

  def update
    @user_image = User.find(params[:id])
    if @user_image.update(user_params)
      redirect_to user_path,notice: "successfully"
    else
      render :edit
    end
  end


  private
  def user_params
  	params.require(:user).permit(:username,:introduction,:image)
  end
end
