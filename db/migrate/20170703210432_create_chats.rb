class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.string :auth_token
      t.string :ip
      t.integer :visitingt
      t.string :browser
      t.boolean :bot

      t.timestamps
    end
  end
end
