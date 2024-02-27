class StoreSection < ApplicationRecord
  has_many :products

  validates :name, presence: true, length: { maximum: 64 }

end
