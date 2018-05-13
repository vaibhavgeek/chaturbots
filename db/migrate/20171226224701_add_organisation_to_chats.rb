class AddOrganisationToChats < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages, :organisation_id ,:integer
  end
end
