json.array!(@backlog_items) do |backlog_item|
  json.extract! backlog_item, :project_id, :type, :title, :state, :description, :user_id
  json.url backlog_item_url(backlog_item, format: :json)
end