class CartsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @products = Product.find(params[:product_id])
    @cart = Cart.new(rental_request_params)

    # number_of_days = @rental_request.end_date - @rental_request.start_date
    # @rental_request.total_price = @instrument.price_per_day * number_of_days

    # @rental_request.status = "en attente"
    # @rental_request.instrument = @instrument

    # if @rental_request.save!
    #   redirect_to profile_path
    # else
    #   render "instruments/show"
    # end
  end

  private
  
  def cart_params
    params.require(:cart).permit(:expire_on)
  end

  def product_params
    params.require(:product).permit(:name, :description, :content, :rating, :tags, :category, :price, :sound_name, :photo)
  end
end
