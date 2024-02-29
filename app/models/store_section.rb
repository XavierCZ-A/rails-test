class StoreSection < ApplicationRecord
  validates :name, presence: true, length: { maximum: 64 }
  has_many :products
end
