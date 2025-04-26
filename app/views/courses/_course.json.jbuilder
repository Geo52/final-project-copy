json.extract! course, :id, :crn, :name, :description, :capacity, :created_at, :updated_at
json.url course_url(course, format: :json)
