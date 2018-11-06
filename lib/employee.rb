class Employee < ActiveRecord::Base
  belongs_to :store
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end
