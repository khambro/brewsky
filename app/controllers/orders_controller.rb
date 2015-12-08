class OrdersController < ApplicationController


  def create

    @order = Order.new(order_params)
    @order.save
    # if session[:id]
    #   @current_user = User.find(session[:id])
    # end
    # session[:id] = @order.id
    redirect_to "/cart/#{session.id}"
  end


  def update
  end

  def show
    #show cart
    @order = Order.new(params[:order_id])
    @order.save
    @items = Item.all
    # if session[:id]
    #   @current_user = User.find(session[:id])
    # end
    # session[:id] = @order.id
    # redirect_to "/cart/#{session.id}"
    # @order = Order.find(params[:session][:id])


  end

  def checkout
  end
  

  private

  def order_params
    params.require(:order).permit(:user_id, :name, :shipping_address, :status, :total, :items)
  end


end
