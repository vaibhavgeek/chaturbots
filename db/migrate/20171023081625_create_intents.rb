class CreateIntents < ActiveRecord::Migration[5.1]
  def change
    create_table :intents do |t|
      t.string :tags
      t.string :patterns
      t.string :responses
      t.integer :visitor_id
      t.integer :user_id

      t.timestamps
    end
  end
end
