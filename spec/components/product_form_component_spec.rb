
RSpec.describe ProductFormComponent, type: :component do

  it "renders the product form" do
    render_inline(described_class.new(product: Product.new))
    expect(page).to have_css(".product-form")
  end

  it "submits the form" do
    product = Product.new
    render_inline(described_class.new(product: product))
    expect(page).to have_css("form[data-turbo-frame='product-form']")
    expect(page).to have_button("Add Product")
  end

end
