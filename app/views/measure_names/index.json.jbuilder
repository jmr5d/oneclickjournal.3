json.array!(@measure_names) do |measure_name|
  json.extract! measure_name, :id, :name, :click_frequency_id
  json.url measure_name_url(measure_name, format: :json)
end
