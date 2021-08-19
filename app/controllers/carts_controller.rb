class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    @cart = @current_cart
  end

  def index
    @products = Product.all
  end

  def create
    @products = Product.find(params[:product_id])
    @cart = Cart.new(cart_params)
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
  

  private
  
  def cart_params
    params.require(:cart).permit(:expire_on)
  end

  def product_params
    params.require(:product).permit(:name, :description, :content, :rating, :tags, :category, :price, :sound_name, :photo)
  end
end
