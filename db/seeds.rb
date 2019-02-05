Airplane.destroy_all
p1 = Airplane.create :name => '747', :rows => 24, :cols => 4
p2 = Airplane.create :name => '757', :rows => 15, :cols => 7
p3 = Airplane.create :name => '767', :rows => 19, :cols => 4

Flight.destroy_all
f1 = Flight.create :flight => 23, :date => '6/2/2019', :to => 'BRIS', :from => 'SYD', :airplane_id => p1.id
f2 = Flight.create :flight => 55, :date => '7/2/2019', :to => 'MELB', :from => 'PERTH', :airplane_id => p2.id
f3 = Flight.create :flight => 79, :date => '8/2/2019', :to => 'NYC', :from => 'SYD', :airplane_id => p3.id
