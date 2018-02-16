# Contributions
# Frank Evers: File creation
# Johan McGwire: Validation, Association

class Port < ApplicationRecord
	has_many :trips
	validates :location, presence: true, uniqueness: true
	validates :country, presence: true
	validates :description, presence: true
end
