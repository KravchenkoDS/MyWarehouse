class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.text :comment
      t.decimal :price, precision: 8, scale: 2
      t.decimal :count, precision: 8, scale: 2

      t.references :products, foreign_key: true
      t.timestamps
    end
  end
end
