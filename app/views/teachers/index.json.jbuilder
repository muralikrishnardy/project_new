json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :student_id, :subject_id, :date_time
  json.url teacher_url(teacher, format: :json)
end
