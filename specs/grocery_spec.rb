require_relative 'spec_helper'

describe 'Grocery' do
  describe 'initialize' do
    it 'must be created with access to each field' do
      groc = Grocery.new("Test")
      groc.must_respond_to :name
      groc.must_respond_to :products
    end

    it 'must be created with the correct values' do
      groc = Grocery.new("Test")
      groc.name.must_equal "Test"
    end
  end
end
