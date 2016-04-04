json.array!(@sports) do |sport|
  json.extract! sport, :id, :type, :num_of_matches, :num_of_players
  json.url sport_url(sport, format: :json)
end
