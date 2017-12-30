class Location < ApplicationRecord
	has_many :dailies

	validates :name, presence: true, uniqueness: true
end
