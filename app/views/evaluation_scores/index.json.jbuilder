json.array!(@evaluation_scores) do |evaluation_score|
  json.extract! evaluation_score, :id, :selected_evaluation_item_id, :interest_id, :score
  json.url evaluation_score_url(evaluation_score, format: :json)
end
