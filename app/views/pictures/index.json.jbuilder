json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :imageable_id, :imageable_type
  json.url picture_url(picture, format: :json)
end
