# Contributions
# Frank Evers: File creation
# Johan McGwire: Validation, Association

class Boat < ApplicationRecord
	has_many :trips
 	has_many :rooms
 	validates :Name, presence: true, uniqueness: true
 	validates :NumberOfRooms, presence: true
end
