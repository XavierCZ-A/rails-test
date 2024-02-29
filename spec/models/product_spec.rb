require 'rails_helper'

RSpec.describe Product, type: :model do

  it "is valid with valid attributes" do
    store_section = StoreSection.create(name: "Electronica")
    product = Product.new(
      name: "Lavadora",
      purchase_date: Date.today,
      store_name: "Wallmart",
      quantity: 1,
      store_section: store_section
    )
    expect(product).to be_valid
  end

  it "is not valid without a name" do
    product = Product.new(
      purchase_date: Date.today,
      store_name: "Wallmart",
      quantity: 1
    )
    expect(product).not_to be_valid
  end

  it "is not valid without a purchase date" do
    product = Product.new(
      name: "Lavadora",
      store_name: "Wallmart",
      quantity: 1
    )
    expect(product).not_to be_valid
  end

  it "is not valid with a name containing special characters" do
    product = Product.new(
      name: "Product %",
      purchase_date: Date.today,
      store_name: "Wallmart",
      quantity: 1
    )
    expect(product).not_to be_valid
  end


end
