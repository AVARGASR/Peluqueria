class AddHoraToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :hora, :time
  end
end
