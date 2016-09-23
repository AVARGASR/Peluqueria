class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :tipo
      t.integer :precio
      t.string :descripcion
      t.references :reservation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
