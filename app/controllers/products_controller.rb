class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all.where(purchased: false)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_path, notice: "Product was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
    if params[:purchased]
      @product.update(purchased: true)
      redirect_to products_path, notice: 'Product was marked as purchased.'
    else
      redirect_to products_path, alert: 'Failed to mark product as purchased.'
    end
  end

  def destroy
    @product.destroy!
      redirect_to products_path, notice: "Product was successfully destroyed."
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :purchase_date, :store_name, :purchased, :quantity, :store_section_id)
    end
end
