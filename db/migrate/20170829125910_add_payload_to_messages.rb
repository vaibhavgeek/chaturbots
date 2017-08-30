class AddPayloadToMessages < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages, :payload , :string
  end
end
