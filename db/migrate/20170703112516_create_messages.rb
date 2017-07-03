class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :user_id
      t.boolean :template
      t.string :responder
      t.integer :template_id

      t.timestamps
    end
  end
end
