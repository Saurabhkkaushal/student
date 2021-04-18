json.extract! student_entity, :id, :name, :email, :address, :enroll_no, :course, :created_at, :updated_at
json.url student_entity_url(student_entity, format: :json)
