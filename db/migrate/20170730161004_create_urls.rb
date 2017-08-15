class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.integer :visitor_id
      t.string :url

      t.timestamps
    end
  end
end
