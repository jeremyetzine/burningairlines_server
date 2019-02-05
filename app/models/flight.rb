# == Schema Information
#
# Table name: flights
#
#  id          :bigint(8)        not null, primary key
#  flight      :integer
#  date        :date
#  to          :text
#  from        :text
#  airplane_id :integer
#  time        :time
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ApplicationRecord
  belongs_to :airplane
  has_many :reservations
  has_and_belongs_to_many :users
end
