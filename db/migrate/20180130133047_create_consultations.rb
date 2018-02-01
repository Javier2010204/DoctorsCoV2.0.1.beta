class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.references :patient, foreign_key: true
      t.text :motivo
      t.datetime :fecha
      t.text :diagnostico
      t.text :anotaciones
      t.text :tratamiento
      t.text :sintomas
      t.text :antecedentes
      t.text :receta
      t.text :examen_fisico

      t.timestamps
    end
  end
end
