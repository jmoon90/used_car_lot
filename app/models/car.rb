class Car < ActiveRecord::Base
  validates_presence_of :mileage
  validates_presence_of :year
  validates_numericality_of :year, greater_than: 1980
  validates_presence_of :color
end
