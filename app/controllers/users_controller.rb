# app/controllers/users_controller.rb
class UsersController < ApplicationController
	load_and_authorize_resource

	def index
    @users = User.all
    @new_user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save(validate: false)
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path, notice: 'User was successfully updated.'
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :role_id)
  end

end
