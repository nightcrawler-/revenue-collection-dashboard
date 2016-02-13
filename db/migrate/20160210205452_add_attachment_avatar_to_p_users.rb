class AddAttachmentAvatarToPUsers < ActiveRecord::Migration
  def self.up
    change_table :p_users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :p_users, :avatar
  end
end
