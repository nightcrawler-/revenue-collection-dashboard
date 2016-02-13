class AddAttachmentIdSlashPassportPicToPUsers < ActiveRecord::Migration
  def self.up
    change_table :p_users do |t|
      t.attachment :id_slash_passport_pic
    end
  end

  def self.down
    remove_attachment :p_users, :id_slash_passport_pic
  end
end
