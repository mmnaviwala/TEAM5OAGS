class AddUsernameUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :users, :username, unique: true
  end

  def down
    remove_index :users, :email
  end
end
