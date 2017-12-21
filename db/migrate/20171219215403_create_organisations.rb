class CreateOrganisations < ActiveRecord::Migration[5.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.integer :admin_id

      t.timestamps
    end
  end
end
