require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:pintura)
  end

  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should create product" do
    post products_url, params: {
      product: {
        name: @product.name,
        purchase_date: @product.purchase_date,
        purchased: @product.purchased,
        quantity: @product.quantity,
        store_name: @product.store_name,
        store_section_id: @product.store_section_id
      }
    }
    assert_redirected_to products_url
  end

  test "should mark product as purchased" do
    patch product_url(@product), params: { purchased: true }
    assert_redirected_to products_url
    assert_equal flash[:notice], 'Product was marked as purchased.'
  end

end
