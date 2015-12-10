class AdminController < ApplicationController



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


  def orders
    @orders = Order.all
  end



end
