json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :time_start, :time_end
  json.url project_url(project, format: :json)
end
