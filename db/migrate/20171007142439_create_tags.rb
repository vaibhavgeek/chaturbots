class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.string :tag_response
      t.integer :template_id

      t.timestamps
    end
  end
end
