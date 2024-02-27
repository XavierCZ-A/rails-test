# frozen_string_literal: true

class GroupProductsComponent < ViewComponent::Base
  def initialize(date, products)
    @date = date
    @products = products
  end
end
