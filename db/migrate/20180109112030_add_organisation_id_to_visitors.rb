class AddOrganisationIdToVisitors < ActiveRecord::Migration[5.1]
  def change
  	add_column  :visitors ,  :organisation_id , :integer
  end
end
