class AddOrganisationToIntents < ActiveRecord::Migration[5.1]
  def change
  	add_column :intents , :organisation_id , :integer
  end
end
