class RenameSamplerProductForeignKey < ActiveRecord::Migration[6.1]
  def change
    rename_column :samplers, :products_id, :product_id
  end
end
