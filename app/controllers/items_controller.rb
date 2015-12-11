class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    if session[:id]
      @current_order = Order.find(session[:id])
    else
      @current_order = Order.create
      session[:id] = @current_order.id
    end
     @item.order_id = @current_order.id
     @item.price = @item.product_option.price_in_cents * @item.quantity
     @item.save
    redirect_to "/product/options/#{@item.product_option.product_id}"
  end

  def show

      @current_order = Order.find(session[:id])
      @items = Item.where(order_id: @current_order.id)

  end


  def delete

    @item = Item.find(params[:item][:id])
    @item.destroy
    redirect_to "/cart"
  end





  private

  def item_params
      params.require(:item).permit(:order_id, :product_option_id, :quantity)

  end



end
