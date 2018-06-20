class CreateDeleteLogo < ActiveRecord::Migration[5.2]
  def change
    add_column :organisations , :delete_logo , :integer 
  end
  
end
