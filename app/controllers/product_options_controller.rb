class ProductOptionsController < ApplicationController

  def index
    @product_options = ProductOption.all
    @product = Product.find(params[:id])
  end

  def show
    @product_options = ProductOption.where(product_id: @product)
  end



  def create
      @product = Product.find(params[:product_option][:product_id])
      @product_options = ProductOption.new(product_options_params)
      @product_options.save
      redirect_to "/admin/product-options/#{@product.id}"
  end


  def formatted_price
    # REVIEW: this number to currency should be in the view
    number_to_currency @product_options.price_in.cents.to_f/100
  end

  def new

  end

  def update
    @product_option = ProductOption.find(params[:product_id])
    @product_option.name = params[:product_option][:name]
    @product_option.price_in_cents = params[:product_option][:price_in_cents]
    if @product_option.save
      redirect_to "/admin/product-options/edit/#{@product_option.product_id}"
    else
      render "show"
    end
  end




  def delete
    @product_option = ProductOption.find(params[:id])
    @product_option.destroy
    redirect_to "/admin/product-options/#{@product_option.product_id}"
  end
  # REVIEW: Not a big deal but having so many line breaks between methods is a bit odd





  private

  def product_options_params
    params.require(:product_option).permit(:name, :price_in_cents, :product_id)
  end

end
