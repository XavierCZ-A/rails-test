# frozen_string_literal: true

class ProductFormComponent < ViewComponent::Base

  def initialize(product:)
    @product = product || Product.new
  end

end
