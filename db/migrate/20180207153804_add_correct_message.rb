class AddCorrectMessage < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages , :message_c , :string
  end
end
