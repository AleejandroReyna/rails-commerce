class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account'
    else
      render :new, alert: "Check your data and try again"
    end
  end

  def create_user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
