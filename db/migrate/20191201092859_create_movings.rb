class CreateMovings < ActiveRecord::Migration[5.2]
  def change
    create_table :movings do |t|
      t.integer :order_code, default: 0, null: false
      t.decimal :price, precision: 8, scale: 2, null: false
      t.decimal :count, precision: 8, scale: 2, null: false
      t.text :comment
      t.integer :status, default: 0, null: false
      # t.references :from, :to, foreign_key: { to_table: :movings }
      #
      t.references :from, references: :movings
      t.references :to, references: :movings

      t.references :product, foreign_key: true
      t.references :shipments, foreign_key: true
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
