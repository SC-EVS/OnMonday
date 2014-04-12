json.array!(@sprints) do |sprint|
  json.extract! sprint, :backlog_item_id, :sprint_number
  json.url sprint_url(sprint, format: :json)
end