class AddDateOfLifeBirth < ActiveRecord::Migration
  def up
  	add_column :users, :date_deceased, :integer
  	add_column :users, :date_of_birth, :integer
  end

  def down
  end
end
