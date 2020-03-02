class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|

      t.timestamps
    end
  end
end
