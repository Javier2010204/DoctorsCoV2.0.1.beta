class AddColumnsToPatient < ActiveRecord::Migration[5.1]
  def change
  	add_column :patients, :weight, :integer
  	add_column :patients, :size, :string
  	add_column :patients, :allergies, :text
  	add_column :patients, :medicines, :text
  	add_column :patients, :diseases, :text 
  end
end
