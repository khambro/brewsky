class OrdersController < ApplicationController


  def create
  end


  def update

  def show
    @current_user = User.find(session[:id])

    # @orders = Order.where(params[:user_id])
  end


end
