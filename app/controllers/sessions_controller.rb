class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to root_path
    else
      render :new
    end
  end


  def create
  	user = User.find_by_email(user_params[:user_name])
  	if user && user.authenticate(user_params[:password_digest])
  		session[:user_id] = user.id
  		redirect_to root_path
  	else
  		redirect_to login_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

private 
  def user_params
  	params.require(:user).permit(:user_name, :password_digest)
  end

end
