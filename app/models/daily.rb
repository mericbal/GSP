class Daily < ApplicationRecord
	# Associations
	belongs_to :user
	belongs_to :location

	# Validations
	validates :color, :make, :ticket_no, :price, :user_id, :location_id, presence: true
end
