json.extract! trip, :id, :Boat, :DeptDate, :ArrDate, :DeptPort, :ArrPort, :created_at, :updated_at
json.url trip_url(trip, format: :json)
