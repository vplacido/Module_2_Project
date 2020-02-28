class CreateServiceCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :service_categories do |t|
      t.integer :service_id
      t.integer :category_id

      t.timestamps
    end
  end
end
