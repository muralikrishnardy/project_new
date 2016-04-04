json.array!(@countries) do |country|
  json.extract! country, :id, :population, :capital, :no_of_states
  json.url country_url(country, format: :json)
end
