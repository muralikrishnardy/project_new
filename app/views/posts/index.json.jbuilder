json.array!(@posts) do |post|
  json.extract! post, :id, :name, :salary, :emp_
  json.url post_url(post, format: :json)
end
