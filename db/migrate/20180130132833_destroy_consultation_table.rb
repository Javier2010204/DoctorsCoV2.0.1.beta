class DestroyConsultationTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :consultations
  end
end
