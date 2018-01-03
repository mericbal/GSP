class Location < ApplicationRecord
	has_many :dailies
	has_many :monthlies

	validates :name, presence: true, uniqueness: true
end
