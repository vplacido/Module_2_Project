class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :time_frame
      t.float :price

      t.timestamps
    end
  end
end
