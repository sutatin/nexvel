json.array!(@interests) do |interest|
  json.extract! interest, :id, :user_id, :company_id, :status, :datetime
  json.url interest_url(interest, format: :json)
end
