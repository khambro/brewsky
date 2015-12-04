class OrdersController < ApplicationController


  def show
    @current_user = User.find(session[:id])

    # @orders = Order.where(params[:user_id])
  end


end
