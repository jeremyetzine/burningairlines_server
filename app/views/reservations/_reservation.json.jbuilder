json.extract! reservation, :id, :flight_id, :user_id, :seat, :seat_row, :seat_col
json.url reservation_url(reservation, format: :json)
