class ChangeOrderTableContent < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :total, :decimal, :precision => 8, :scale => 2
    add_column :orders, :subtotal, :decimal, :precision => 8, :scale => 2
    remove_column :orders, :total_amount, :decimal
  end
end
