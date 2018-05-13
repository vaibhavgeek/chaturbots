class AddAttachmentAvatarToOrganisations < ActiveRecord::Migration[5.1]
  def self.up
    change_table :organisations do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :organisations, :avatar
  end
end
