json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :value, :measure_unit_id, :measure_name_id, :measurement_id
  json.url line_item_url(line_item, format: :json)
end
