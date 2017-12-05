class ChangeColumnNameTags < ActiveRecord::Migration[5.1]
  def change
  	rename_column :intents, :tags, :tag

  end
end
