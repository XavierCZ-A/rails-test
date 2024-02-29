class ProductsController < ApplicationController
  before_action :set_product, only: %i[ update ]

  def index
    @products = Product.where(purchased: false).order(purchase_date: :asc)
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_path, notice: "Product was successfully created."
      end
  end

  def update
    if params[:purchased].present?
      if @product.update(purchased: true)
        redirect_to products_path, notice: 'Product was marked as purchased.'
      else
        redirect_to products_path, alert: 'Failed to mark product as purchased.'
      end
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :purchase_date, :store_name, :purchased, :quantity, :store_section_id)
    end

end
