class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.references :seller, null: false, foreign_key: true
      t.string :profession
      t.string :email

      t.timestamps
    end
  end
end
