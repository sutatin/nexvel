json.array!(@selected_evaluation_items) do |selected_evaluation_item|
  json.extract! selected_evaluation_item, :id, :user_id, :evaluation_item_id, :importance
  json.url selected_evaluation_item_url(selected_evaluation_item, format: :json)
end
