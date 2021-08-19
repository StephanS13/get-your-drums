class AddPayMethodToOrder1 < ActiveRecord::Migration[6.1]
  def change
    add_column :order1s, :pay_method, :string
  end
end
