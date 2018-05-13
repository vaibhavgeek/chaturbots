class AddCableToMessages < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages , :cable , :bool
  end
end
