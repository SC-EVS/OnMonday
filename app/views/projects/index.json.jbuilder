json.array!(@projects) do |project|
  json.extract! project, :proj_URL, :user_id
  json.url project_url(project, format: :json)
end