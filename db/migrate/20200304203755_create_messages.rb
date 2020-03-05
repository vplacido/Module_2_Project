class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :seller_id
      t.string :text
      
      t.timestamps
    end
  end
end
