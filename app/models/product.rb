class Product < ApplicationRecord
  belongs_to :store_section

  validates :name, presence: true, length: { maximum: 128 }, format: { without: /[%$&@+|]/ }
  validates :purchase_date, presence: true
  validates :store_name, length: { maximum: 64 }
  validates :quantity, presence: true
  validates :store_section_id, presence: true


end
