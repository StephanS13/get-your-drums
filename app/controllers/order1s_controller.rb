class Order1sController < ApplicationController
  def index
    @orders = Order1.all
  end

  def show
    @order = Order1.find(params[:id])
  end

  def new
    @order = Order1.new
  end

  def create
    @order = Order1.new(order_params)
    @current_cart.line_items.each do |item|
      @order.line_items << item
      # item.cart_id = nil
      item.update(cart_id: nil)
    end
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to root_path
  end
  
  private

  def order_params
    params.require(:order1).permit(:name, :email, :address, :pay_method)
  end
end

