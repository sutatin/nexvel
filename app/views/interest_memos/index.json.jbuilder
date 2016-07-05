json.array!(@interest_memos) do |interest_memo|
  json.extract! interest_memo, :id, :interest_id, :date, :memo
  json.url interest_memo_url(interest_memo, format: :json)
end
