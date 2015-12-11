class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to "/"
  end

  def new
    @users = User.all
  end

  def show
    @current_user = User.find(session[:user_id])

    # @orders = Order.where(user_id: params[:id])

  end





  private

  def user_params
    params.require(:user).permit(:email, :password)
  end


end
