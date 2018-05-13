class AddUnreadToVisitor < ActiveRecord::Migration[5.1]
  def change
  	add_column :visitors , :unread , :string
  end
end
