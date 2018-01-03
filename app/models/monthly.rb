class Monthly < ApplicationRecord
	# Associations
	belongs_to :user
	belongs_to :location

	# Validations
	validates :first, :last, :phone, :make, :color, :price, :user_id, :location_id, presence: true
end
