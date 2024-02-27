class AddStoreSectionToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :store_section, null: false, foreign_key: true
  end
end
