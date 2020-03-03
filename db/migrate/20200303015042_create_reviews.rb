class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      t.integer :user_id
      t.integer :wine_id
      t.timestamps
    end
  end
end
