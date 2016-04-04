json.array!(@projects) do |project|
  json.extract! project, :id, :employe_id, :manager_id, :date_time
  json.url project_url(project, format: :json)
end
