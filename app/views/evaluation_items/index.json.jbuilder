json.array!(@evaluation_items) do |evaluation_item|
  json.extract! evaluation_item, :id, :title
  json.url evaluation_item_url(evaluation_item, format: :json)
end
