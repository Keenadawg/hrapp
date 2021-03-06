class SessionsController < ApplicationController
  def create
    user = login(params[:email], params[:password], [:remember_me])
   
    if user 
      redirect_to root_url
    else 
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_url
  end
end
