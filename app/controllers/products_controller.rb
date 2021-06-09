class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @products = Product.all
    @category = ["Producers kits", "Machines kits", "Instruments", "Other kits"]
  end

  def show
    @product = Product.find(params[:id])
  end

  def producers
    @products = Product.all
    @category = ["Producers"]
  end

  def machines
    @products = Product.all
    @category = ["Instruments"]
  end

  def instruments
    @products = Product.all
    @category = ["Instruments"]
  end

  def other_kits
    @products = Product.all
    @category = ["Other kits"]
  end

  def sampler
    @product
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :content, :rating, :tags, :category, :price, :sound_name, :photo)
  end
end
