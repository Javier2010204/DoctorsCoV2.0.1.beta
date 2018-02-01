json.extract! consultation, :id, :patient_id, :motivo, :fecha, :diagnostico, :anotaciones, :tratamiento, :sintomas, :antecedentes, :receta, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
