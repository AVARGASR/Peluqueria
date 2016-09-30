class AddColumnsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :nombre, :string
    add_column :reservations, :apellido, :string
    add_column :reservations, :telefono, :integer
    add_column :reservations, :email, :string
    add_column :reservations, :direccion, :string
    add_column :reservations, :sexo, :boolean
  end
end
