class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :monto
      t.date :fecha
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
