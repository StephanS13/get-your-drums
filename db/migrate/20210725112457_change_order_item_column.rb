class ChangeOrderItemColumn < ActiveRecord::Migration[6.1]
  def change
    def up
      change_column :order_items, :order, :references
    end
    
    def down
      change_column :order_items, :order, :references
    end
  end
end
