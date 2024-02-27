class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.date :purchase_date
      t.string :store_name
      t.boolean :purchased
      t.integer :quantity

      t.timestamps
    end
  end
end
