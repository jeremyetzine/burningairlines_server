# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  seat       :text
#  flight_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flight
end
