class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :buy, foreign_key: true
      t.integer :prefecture_id, null: false
      t.string :yubin_number, null: false
      t.string :city_number, null: false
      t.string :city, null: false
      t.string :building_name, null: false
      t.string :phone_number, null: false
      
      t.timestamps
    end
  end
end
