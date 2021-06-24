class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :full_name
      t.string :address_1
      t.string :address_2
      t.string :post_code
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
