class AddMlToggleMessages < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages , :ml, :boolean
  	add_column :messages , :online , :boolean
  end
end
