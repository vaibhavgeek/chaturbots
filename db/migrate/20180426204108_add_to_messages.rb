class AddToMessages < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages , :url , :string
  	add_column :messages , :title , :string 
  	add_column :messages , :score , :string 
  	add_column :messages , :shorta , :string 

  end
end
