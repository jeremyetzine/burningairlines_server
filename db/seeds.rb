Airplane.destroy_all
p1 = Airplane.create :name => '747', :rows => 24, :cols => 4
p2 = Airplane.create :name => '757', :rows => 15, :cols => 7
p3 = Airplane.create :name => '767', :rows => 19, :cols => 4

Flight.destroy_all
f1 = Flight.create :flight => 23, :date => '6/2/2019', :to => 'BRIS', :from => 'SYD', :airplane_id => p1.id
f2 = Flight.create :flight => 55, :date => '7/2/2019', :to => 'MELB', :from => 'PERTH', :airplane_id => p2.id
f3 = Flight.create :flight => 79, :date => '8/2/2019', :to => 'NYC', :from => 'SYD', :airplane_id => p3.id

User.destroy_all
u1 = User.create :name => 'John CEO', :email => 'JohnCEO@ga.co', :password => 'chicken', :admin => true
u2 = User.create :name => 'Chicken', :email => 'FlyingChicken@ga.co', :password => 'chicken', :admin => false
u3 = User.create :name => 'Turkey', :email => 'FlyingTurkey@ga.co', :password => 'turkey', :admin => false

Reservation.destroy_all
r1 = Reservation.create :seat_row => 22, :seat_col => 'A', :seat => '22A', :flight_id => f1.id, :user_id => u1.id
r2 = Reservation.create :seat_row => 10, :seat_col => 'E', :seat => '10E', :flight_id => f2.id, :user_id => u2.id
r3 = Reservation.create :seat_row => 4, :seat_col => 'C', :seat => '4C', :flight_id => f3.id, :user_id => u3.id
