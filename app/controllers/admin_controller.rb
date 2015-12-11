class AdminController < ApplicationController
  before_action :authorize_admin



  def new
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product                        = Product.find(params[:id])
    @product.name                   = params[:product][:name]
    @product.description            = params[:product][:description]
    if @product.save
      redirect_to "/admin/products"
    else
      render "/admin/products/edit/:id"
    end
  end

  def order_status
    @order = Order.find(params[:order][:id])
    @order.status = params[:order][:status]
    @order.save
    redirect_to "/admin-order"
  end


  def orders
    @orders = Order.all
    @products = Product.all
    @product_options = ProductOption.all
  end



end
