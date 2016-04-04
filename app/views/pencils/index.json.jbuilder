json.array!(@pencils) do |pencil|
  json.extract! pencil, :id, :name, :description
  json.url pencil_url(pencil, format: :json)
end
