class OrdersController < ApplicationController


  def create

    @order = Order.new(order_params)
    @order.save

    redirect_to "/cart/checkout/#{@current_order.id}"
  end



  def show
    @current_order = Order.find(session[:id])
    @items = Item.where(order_id: @current_order)



    # if session[:id]
    #   @current_user = User.find(session[:id])
    # end
    # session[:id] = @order.id
    # redirect_to "/cart/#{session.id}"
    # @order = Order.find(params[:session][:id])
  end

  def update

    @current_order = Order.find(session[:id])
    @current_order.name = params[:name]
    @current_order.shipping_address = params[:address]
    @current_order.status = "paid"
    if @current_order.save
    session.delete(:id)
      redirect_to "/cart/checkout/#{@current_order.id}/confirmation"

    else
        raise
      render "show"
    end
  end



  def confirmation

  end



  private

  def order_params
    params.require(:order).permit(:user_id, :name, :shipping_address, :status, :total)
  end


end
