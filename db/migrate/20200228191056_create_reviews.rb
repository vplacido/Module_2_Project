class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :service_id
      t.string :description
      t.float :rating

      t.timestamps
    end
  end
end
