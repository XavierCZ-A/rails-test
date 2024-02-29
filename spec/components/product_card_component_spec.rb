require "rails_helper"

RSpec.describe ProductCardComponent, type: :component do
  let(:store_section) { StoreSection.create(name: "Electronica") }

  let(:product) do
    Product.new(
      name: "Lavadora",
      purchase_date: Date.today,
      store_name: "Wallmart",
      quantity: 1,
      store_section: store_section
    )
  end

  subject { render_inline(described_class.new(product: product)) }

  it "renders the product card" do
    expect(subject.css(".product-card")).to be_present
  end

  it "renders the product information correctly" do
    expect(subject.to_s).to include("Wallmart")
    expect(subject.to_s).to include("Lavadora")
    expect(subject.to_s).to include("1")
    expect(subject.to_s).to include("Electronica")
  end

end
