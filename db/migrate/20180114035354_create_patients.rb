class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :age
      t.string :sex, default: "Masculino"
      t.string :departament
      t.string :city
      t.string :country, default: "Guatemala"
      t.string :email
      t.string :phone
      t.string :state, default: "active"

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
