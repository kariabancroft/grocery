require_relative 'spec_helper'

describe 'Product' do
  describe 'initialize' do
    it 'must be created with access to each field' do
      product = Product.new("Test", 10, "3" * 16)
      product.must_respond_to :quantity
      product.must_respond_to :name
      product.must_respond_to :price
      product.must_respond_to :isbn
    end

    it 'is created with the correct values' do
      product = Product.new("Test", 10, "3003" * 4, 25)
      product.quantity.must_equal 25
      product.name.must_equal "Test"
      product.price.must_equal 10
      product.isbn.must_equal "3003300330033003"
    end
  end
end
