class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.integer :visitor_id
      t.integer :user_id
      t.string :session_var

      t.timestamps
    end
  end
end
