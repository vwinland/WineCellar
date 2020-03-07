class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      
      t.belongs_to :wine
      t.timestamps
    end
  end
end
