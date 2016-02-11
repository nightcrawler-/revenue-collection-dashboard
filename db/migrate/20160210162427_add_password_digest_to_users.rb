class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :p_users, :password_digest, :string
  end
end
