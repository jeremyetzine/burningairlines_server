# == Schema Information
#
# Table name: airplanes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  rows       :integer
#  cols       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ApplicationRecord
  has_many :flights
end
