class SamplerController < ApplicationController
  def index
    @products = Product.all
  end
end
