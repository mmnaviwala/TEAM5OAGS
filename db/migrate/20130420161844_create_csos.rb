class CreateCsos < ActiveRecord::Migration
  def change
    create_table :csos do |t|

      t.timestamps
    end
  end
end
