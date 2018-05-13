class AddToVisitors < ActiveRecord::Migration[5.1]
  def change
  	add_column :visitors , :chat_id , :integer
  end
end
