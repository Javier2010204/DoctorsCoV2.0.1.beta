class CreateMedicalHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_histories do |t|
      t.integer :weight
      t.decimal :size
      t.text :alergies
      t.text :medicines
      t.text :diseases
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
