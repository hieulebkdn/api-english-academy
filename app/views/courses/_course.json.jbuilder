json.extract! course, :id, :name, :start_date, :teacher_id, :is_open, :created_at, :updated_at
json.url course_url(course, format: :json)
