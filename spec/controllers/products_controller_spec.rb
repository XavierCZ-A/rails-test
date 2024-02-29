require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      store_section = StoreSection.create(name: "Hogar")
      it "creates a new product" do
        expect {
          post :create, params: { product: { name: "Pintura", purchase_date: "2024-02-23", store_name: "Wallmart", purchased: false, quantity: 1, store_section_id: store_section } }
        }.to change(Product, :count).by(1)
      end

      it "redirects to products_path" do
        store_section = StoreSection.create(name: "Hogar")
        post :create, params: { product: { name: "Pintura", purchase_date: "2024-02-23", store_name: "Wallmart", purchased: false, quantity: 1, store_section_id: store_section } }
        expect(response).to redirect_to(products_path)
      end
    end

    context "with invalid attributes" do
      store_section = StoreSection.create(name: "Hogar")
      it "does not create a new product" do
        expect {
          post :create, params: { product: { name: nil, purchase_date: "2024-02-23", store_name: "Wallmart", purchased: false, quantity: 1, store_section_id: store_section } }
        }.to_not change(Product, :count)
      end
    end
  end
end
