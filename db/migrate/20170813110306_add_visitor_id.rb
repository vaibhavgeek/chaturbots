class AddVisitorId < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages , :visitor_id , :integer 
  end
end
