class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title, :null =>false
      t.string :medium, :null =>false
      t.text :description, :null =>false
      t.string :copy, :null =>false
      t.integer :artist_id, :null =>false
      t.string :img_url
      t.float :acquisition_price, :null =>false
      t.float :asking_price
      t.string :date_acquired
      t.string :date_sold

      t.timestamps
    end
  end
end
