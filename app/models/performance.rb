class Performance < ApplicationRecord
	belongs_to :employee
	has_one :salary
end
