class AddWebsiteOrganisation < ActiveRecord::Migration[5.1]
  def change
  	add_column :organisations , :website , :string
  	add_column :organisations , :admin_name , :string
  	add_column :organisations , :admin_email , :string
  end
end
