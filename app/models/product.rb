class Product < ApplicationRecord
  # has_many :orders, foreign_key: :user_id
  # belongs_to :owner, class_name: "User"
  has_one_attached :photo
  has_one_attached :audio
end
