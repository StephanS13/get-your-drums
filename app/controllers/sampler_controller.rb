class SamplerController < ApplicationController
  def index
    @products = Product.all
    @producers = @products.where(category: "producers")
    @machines = @products.where(category: "machines")
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @producers = @products.where(category: "producers")
    @machines = @products.where(category: "machines")
    @instruments = @products.where(category: "instruments")
    @other_kits = @products.where(category: "other kits")
  end

  
  private

  def product_params
    params.require(:product).permit(:name, :description, :content, :rating, :tags, :category, :price, :sound_name, :photo)
  end
end
