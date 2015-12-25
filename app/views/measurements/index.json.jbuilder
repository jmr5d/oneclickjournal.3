json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :altitude, :latitude, :longitude, :happened_at, :user_id
  json.url measurement_url(measurement, format: :json)
end
