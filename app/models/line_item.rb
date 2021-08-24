class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order1, optional: true
  

  # LOGIC
  def total_price
    self.quantity * self.product.price
  end
end

