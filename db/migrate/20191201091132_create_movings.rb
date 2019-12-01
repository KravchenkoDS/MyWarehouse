class CreateMovings < ActiveRecord::Migration[5.2]
  def change
    create_table :movings do |t|
      t.products :product
      t.decimal :price
      t.decimal :count
      t.text :comment

      t.timestamps
    end
  end
end
