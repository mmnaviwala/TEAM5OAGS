class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content, :null =>false
      t.integer :customer_id

      t.timestamps
    end
  end
end
