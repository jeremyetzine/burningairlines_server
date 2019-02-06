class AddSeatColToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :seat_col, :text
  end
end
