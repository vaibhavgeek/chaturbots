class UrlChange < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :urls , :v_count , :integer
  	  	add_column :urls , :auth_token , :string

  end
end
