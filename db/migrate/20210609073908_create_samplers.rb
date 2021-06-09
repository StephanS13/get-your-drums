class CreateSamplers < ActiveRecord::Migration[6.1]
  def change
    create_table :samplers do |t|
      t.string :sound_name
      t.binary :sound_audio
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
