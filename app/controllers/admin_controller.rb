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
    # @product_options.name           = params[:product_options][:name]
    # @product_options.price_in_cents = params[:product_options][:price_in_cents]
    # @product_options.product_id     = params[:product_options][:product_id]
    if @product.save
      redirect_to "/admin/products"
    else
      render "/admin/products/edit/:id"
    end
  end



end
