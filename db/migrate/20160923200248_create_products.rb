class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :precio
      t.integer :stock
      t.string :descripcion
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
