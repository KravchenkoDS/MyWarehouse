class CreateMovings < ActiveRecord::Migration[5.2]
  def change
    create_table :movings do |t|
      t.decimal :price, precision: 8, scale: 2
      t.decimal :count, precision: 8, scale: 2
      t.text :comment

      t.references :products, foreign_key: true
      t.references :shipments, foreign_key: true
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
