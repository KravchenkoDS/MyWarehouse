class CreateMovings < ActiveRecord::Migration[5.2]
  def change
    create_table :movings do |t|
      t.products :product
      t.shipments :shipment
      t.decimal :price, precision: 8, scale: 2
      t.decimal :count, precision: 8, scale: 2
      t.text :comment

      t.timestamps
    end
  end
end
