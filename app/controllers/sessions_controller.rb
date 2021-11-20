class SessionsController < ApplicationController
  layout "auth", :only => [:new]

  def new
  end

  def create
    user = User.find_by(email: login_params[:email])
    puts "user here"
    puts user
    puts "end user here"
    if user.present? && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      return redirect_to root_path, notice: 'Logged in successfully'
    else
      flash[:error] = "Invalid email or password for this email"
    end
    render :new
  end

  def destroy
    # deletes user session
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out successfully'
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
