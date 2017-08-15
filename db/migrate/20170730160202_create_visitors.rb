class CreateVisitors < ActiveRecord::Migration[5.1]
  def change
    create_table :visitors do |t|
      t.string :ipaddr
      t.string :location
      t.integer :v_count
      t.string :url_id
      t.string :name
      t.string :email
      t.string :auth_token
      t.timestamps
    end
  end
end
