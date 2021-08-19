class CreateOrder1s < ActiveRecord::Migration[6.1]
  def change
    create_table :order1s do |t|
      t.string :name
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
