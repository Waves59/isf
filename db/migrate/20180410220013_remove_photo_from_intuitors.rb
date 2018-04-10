class RemovePhotoFromIntuitors < ActiveRecord::Migration[5.1]
  def change
    remove_column :intuitors, :photo, :string
  end
end
