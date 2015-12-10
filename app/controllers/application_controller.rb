class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_current_user
  before_action :cart


  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def cart
    if session[:id]
      @current_order = Order.find(session[:id])
    else
      @current_order = Order.create
      session[:id] = @current_order.id
    end
      @items = Item.where(order_id: @current_order.id) if @current_order
    
  end


end
