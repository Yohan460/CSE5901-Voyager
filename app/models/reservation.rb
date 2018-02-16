# Contributions
# Eid Al-rabadi: File creation
# Johan McGwire: Validation, Association

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  belongs_to :trip
  validates :user_id, presence: true
  validates :trip_id, presence: true
  validates :room_id, presence: true
end
