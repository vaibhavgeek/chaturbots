class AddOrganisationToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users , :name , :string
  	add_column :users, :organisation_id , :integer 
  	add_column :users , :organisation_admin , :boolean
  end
end
