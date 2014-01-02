require 'spec_helper'

describe Car do
  it { should validate_presence_of :color }
  it { should validate_presence_of :year }
  it { should validate_numericality_of(:year).is_greater_than(1980) }
  it { should validate_presence_of :mileage }
end
