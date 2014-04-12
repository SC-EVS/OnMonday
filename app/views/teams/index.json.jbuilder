json.array!(@teams) do |team|
  json.extract! team, :user_id, :proj_id
  json.url team_url(team, format: :json)
end