json.array!(@companies) do |company|
  json.extract! company, :id, :name, :logoURL
  json.url company_url(company, format: :json)
end
