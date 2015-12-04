class ProductsController < ApplicationController

  def index
    @products = Product.all
    if session[:id]
      @current_user = User.find(session[:id])
    end
  end

  def create
      @product = Product.new(product_params)
      @product.save
      redirect_to "/admin/products"
  end


  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/admin/products"
  end

  def show
    @product = Product.find(params[:id])
    @product_options = ProductOption.all
  end



  private

  def product_params
    params.require(:product).permit(:name, :description, :image_url)
  end

end
