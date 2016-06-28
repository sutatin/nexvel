json.array!(@interests) do |interest|
  json.extract! interest, :id, :user_id, :company_id
  json.url interest_url(interest, format: :json)
end
