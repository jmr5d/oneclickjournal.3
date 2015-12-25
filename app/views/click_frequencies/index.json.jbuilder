json.array!(@click_frequencies) do |click_frequency|
  json.extract! click_frequency, :id, :user_id, :click_count
  json.url click_frequency_url(click_frequency, format: :json)
end
