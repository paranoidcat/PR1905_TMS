class UsersController < ApplicationController
  before_action: current_user, only: [:update, :show]
  
  def index 
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user  = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else 
      flash[:danger] = "Profile wasn't updated"
      render 'edit'
    end 
  end
  private 
  def user_params
    params.require(:user).permit(:name, :email, :phone, :password,
      :password_confirmation, :admin)
  end
end
