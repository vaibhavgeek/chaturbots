class AddToMessagesTags < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages, :tags , :string
  end
end
