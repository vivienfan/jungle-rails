class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.authenticate_with_credentials(params[:session][:email], params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:danger] = "Email and password does not match"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
