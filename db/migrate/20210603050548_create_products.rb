class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.text :description
      t.text :content
      t.float :price
      t.integer :rating
      t.string :tags
      t.string :sound_name

      t.timestamps
    end
  end
end
