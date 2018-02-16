json.extract! reservation, :id, :user, :room, :trip, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
