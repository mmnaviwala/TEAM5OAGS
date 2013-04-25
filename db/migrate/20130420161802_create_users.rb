class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.integer :zip
      t.string :state
      t.integer :area_code
      t.string :phone_number
      t.string :country
      t.string :password_digest
      t.string :remember_token
      t.string :username, :null =>false
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
