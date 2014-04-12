json.array!(@sprint_backlog_items) do |sprint_backlog_item|
  json.extract! sprint_backlog_item, :backlog_item_id, :activity, :iteration, :state, :user_id
  json.url sprint_backlog_item_url(sprint_backlog_item, format: :json)
end