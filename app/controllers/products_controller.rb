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

  def new
    @products = Product.all
  end


  def edit
    @product = Product.find(params[:id])
  end

  def update
    @ph = Ph.find(params[:id])
    @ph.reading = params[:reading]
    @ph.mood = params[:mood]
    if @ph.save
      redirect_to "/admin/products"
    else
      render "/stats/edit"
    end
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/admin/products"
  end



  private

  def product_params
    params.require(:product).permit(:name, :description, :image_url)
  end

end
