class CreateDbas < ActiveRecord::Migration
  def change
    create_table :dbas do |t|

      t.timestamps
    end
  end
end
