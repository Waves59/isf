class AddAttachmentAvatarToIntuitors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :intuitors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :intuitors, :avatar
  end
end
