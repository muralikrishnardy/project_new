json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :is_succes, :user_count, :employe_id, :user_id
  json.url event_url(event, format: :json)
end
