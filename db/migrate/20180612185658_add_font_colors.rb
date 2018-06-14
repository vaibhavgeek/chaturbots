class AddFontColors < ActiveRecord::Migration[5.2]
  def change
  	add_column  :organisations , :p_f_color , :string
  	 add_column  :organisations , :s_f_color , :string

  end
end
