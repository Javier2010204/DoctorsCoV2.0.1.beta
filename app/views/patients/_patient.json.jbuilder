json.extract! patient, :id, :first_name, :last_name, :address, :age, :sex, :departament, :city, :country, :email, :phone, :state, :created_at, :updated_at
json.url patient_url(patient, format: :json)
