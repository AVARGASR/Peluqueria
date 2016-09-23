class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :fecha
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
