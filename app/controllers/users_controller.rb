class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password,:password_confirmation)

  end

  # sessionsコントローラーと間違えて記入したかも？なので一旦destroyの内容はコメントアウト

  def destroy
    # log_out
    # redirect_to root_url
  end

end
