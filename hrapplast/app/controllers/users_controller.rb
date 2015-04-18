class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(creation_params)
    
    if @user.save
      auto_login(@user)
      redirect_to @user
    else 
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
private
  def creation_params
    params.require(:user).permit(:email, :password, :name)
  end
end
