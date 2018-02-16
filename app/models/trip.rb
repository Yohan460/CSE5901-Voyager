# Contributions
# Frank Evers: File creation
# Johan McGwire: Validation, Association

class Trip < ApplicationRecord
	has_many :reservations
	belongs_to :boat
	belongs_to :ArrPort, class_name: "Port"
	belongs_to :DeptPort, class_name: "Port"
	validates :DeptPort_id, presence: true
	validates :ArrPort_id, presence: true
	validates :DeptDate, presence: true
	validates :ArrDate, presence: true, date: {after: :DeptDate, message: "The Arrival Date must be after the Departure Date"}
	validates :boat_id, presence: true
	validates :description, presence: true
end
