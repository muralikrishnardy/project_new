json.array!(@rajs) do |raj|
  json.extract! raj, :id, :name, :age, :salary, :location, :job
  json.url raj_url(raj, format: :json)
end
