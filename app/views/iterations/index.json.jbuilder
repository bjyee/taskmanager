json.array!(@iterations) do |iteration|
  json.extract! iteration, :id, :name, :time_start, :time_end, :description, :project_id
  json.url iteration_url(iteration, format: :json)
end
