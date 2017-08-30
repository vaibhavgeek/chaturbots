class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :payload
      t.string :partial
      t.string :intent
      t.integer :user_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
