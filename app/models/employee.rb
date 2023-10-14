class Employee < ApplicationRecord
	has_many :leaves
	has_many :performances
	belongs_to :department
	has_one :experience
end
