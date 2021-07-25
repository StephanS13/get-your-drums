class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :order_items

  before_save :set_subtotal


  def subtotal
    order_items.collect{|order_item| order_item.valid? ? order_idem.price*order_item.quantity : 0}.sum
  end


  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
