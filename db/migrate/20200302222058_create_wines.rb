class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name 
      t.integer :year
      t.string :grape_variety
      t.string :country_of_origin
      t.integer :rating

      t.timestamps
    end
  end
end
