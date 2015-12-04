class ProductOptionsController < ApplicationController

  def index

    @product_options = ProductOption.all
    @product = Product.find(params[:id])
  end

  def show
    @product_options = ProductOption.where(product_id: @product)
  end



  def create
      @product = Product.find(params[:id])
      @product_options = ProductOption.new(product_options_params)
      @product_options.save
      redirect_to "/admin/product-options/edit/#{@product.id}"
  end

  def new

  end



  def delete
    @product_option = ProductOption.find(params[:id])
    @product_option.destroy
    redirect_to "/admin/product-options/edit/#{@product_option.product_id}"
  end






  private

  def product_options_params
    params.require(:product_option).permit(:name, :price_in_cents, :product_id)
  end

end
