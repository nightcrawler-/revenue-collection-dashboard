class AddActivationToPUsers < ActiveRecord::Migration
  def change
    add_column :p_users, :activation_digest, :string
    add_column :p_users, :activated, :boolean, default: false
    add_column :p_users, :activated_at, :datetime
  end
end
