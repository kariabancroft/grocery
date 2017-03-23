class Grocery
  attr_reader :name #, :products

  def initialize(name)
    @name = name
    @products = {}
  end

  def add_product(product, aisle_num)
    # ensure it is actually a product object
    # do some sort of handling on aisle numbers within a valid range

    if !@products[aisle_num]
      @products[aisle_num] = []
    end

    @products[aisle_num] << product
  end

  def products_for_aisle(aisle_num)
    # ensure the aisle is valid in our data set
    
    @products[aisle_num]
  end

  def aisles
    @products.keys.sort
  end

  def products
    @products.values.flatten
  end
end
