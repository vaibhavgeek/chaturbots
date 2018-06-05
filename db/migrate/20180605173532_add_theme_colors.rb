class AddThemeColors < ActiveRecord::Migration[5.2]
  def change
  	add_column :organisations , :bg_color , :string 
  	add_column :organisations , :p_color , :string 
  	add_column :organisations , :s_color , :string 
  	add_column :organisations , :icon_color , :string 

  end
end
