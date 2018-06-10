class AddAvatarToOrganisations < ActiveRecord::Migration[5.2]
   def up
    add_attachment :organisations, :avatar_icon
        add_attachment :organisations, :bg_img

  end

  def down
    remove_attachment :organisations, :avatar_icon
        remove_attachment :organisations, :bg_img

  end
end
