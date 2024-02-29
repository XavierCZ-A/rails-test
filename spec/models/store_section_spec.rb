require 'rails_helper'

RSpec.describe StoreSection, type: :model do
  context "validations" do
    it "is valid with valid attributes" do
      store_section = StoreSection.new(name: "Panaderia")
      expect(store_section).to be_valid
    end

    it "is not valid without a name" do
      store_section = StoreSection.new(name: nil)
      expect(store_section).to_not be_valid
    end

    it "is not valid with a name longer than 64 characters" do
      store_section = StoreSection.new(name: "autos" * 65)
      expect(store_section).to_not be_valid
    end
  end

  context "associations" do
    it "has many products" do
      association = described_class.reflect_on_association(:products)
      expect(association.macro).to eq :has_many
    end
  end

end
