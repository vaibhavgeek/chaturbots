class AddVisitorInfo < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :visitors , :browser_d , :string

  end
end
