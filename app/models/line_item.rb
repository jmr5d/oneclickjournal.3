class LineItem < ActiveRecord::Base
  belongs_to :measure_unit
  belongs_to :measure_name
  belongs_to :measurement
end
