class AddSeatRowToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :seat_row, :integer
  end
end
