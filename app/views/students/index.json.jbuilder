json.array!(@students) do |student|
  json.extract! student, :id, :name, :num, :age, :address, :branch
  json.url student_url(student, format: :json)
end
