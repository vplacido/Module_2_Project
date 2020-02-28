class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :time_frame
      t.float :price
      t.integer :seller_id

      t.timestamps
    end
  end
end
