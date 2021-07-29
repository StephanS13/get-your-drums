class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @products = Product.all
    # @categories = ["Producers kits", "Machines kits", "Instruments", "Other kits", "Drums"]
    @producers = @products.where(category: "producers")
    @producers = @products.where(category: "producers")
    @machines = @products.where(category: "machines")
    @instruments = @products.where(category: "instruments")
    @other_kits = @products.where(category: "other kits")

    @order_item = current_order.order_items.new
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @producers = @products.where(category: "producers")
    @machines = @products.where(category: "machines")
    @instruments = @products.where(category: "instruments")
    @other_kits = @products.where(category: "other kits")
    
    @order_item = current_order.order_items.new
  end

  def producers
    @products = Product.all
    @producers = @products.where(category: "producers")
  end

  def machines
    @products = Product.all
    @machines = @products.where(category: "machines")
  end

  def instruments
    @products = Product.all
    @instruments = @products.where(category: "instruments")
  end

  def other_kits
    @products = Product.all
    @other_kits = @products.where(category: "other_kits")
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :content, :rating, :tags, :category, :price, :sound_name, :photo, :audio)
  end
end
