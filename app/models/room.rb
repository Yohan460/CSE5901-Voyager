# Contributions
# Frank Evers: File creation
# Johan McGwire: Validation, Association

class Room < ApplicationRecord
	has_many :reservations
	belongs_to :boat
	validates :boat_id, presence: true
  	validates :Name, presence: true, uniqueness: true
  	validates :Size, presence: true
  	validates :Price, presence: true
end
