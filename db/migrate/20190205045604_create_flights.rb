class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :flight
      t.date :date
      t.text :to
      t.text :from
      t.integer :airplane_id
      t.time :time
      t.integer :duration

      t.timestamps
    end
  end
end
