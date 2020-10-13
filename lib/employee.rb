class Employee < ActiveRecord::Base
  
#2. Add the following code directly inside the Employee model (class): `belongs_to :store`
  belongs_to :store

  # * Employees must always have a first name present
  # * Employees must always have a last name present
  # * Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :less_than => 40, :greater_than => 200 }
  validates :store, presence: true
  
end
