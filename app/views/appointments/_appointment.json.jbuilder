json.extract! appointment, :id, :date, :annotations, :patient_id, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
