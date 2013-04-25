class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :date_of_birth, :null =>false
      t.string :date_deceased

      t.timestamps
    end
  end
end
