class Product < ApplicationRecord

  validates :name, presence: true, length: { maximum: 128 }, format: { without: /[%$&@+|]/ }
  validates :purchase_date, presence: true
  validates :store_name, length: { maximum: 64 }
  validates :quantity, presence: true
  belongs_to :store_section


end
