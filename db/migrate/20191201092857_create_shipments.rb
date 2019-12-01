class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.products :product
      t.movings :moving
      t.text :comment
      t.decimal :price, precision: 8, scale: 2
      t.decimal :count, precision: 8, scale: 2

      t.timestamps
    end
  end
end
