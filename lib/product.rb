class Product
  attr_reader :name, :price, :isbn, :quantity

  def initialize(name, price, isbn, quantity = 0)
    # raise argument errors for non-string, non-float, not 16 digits

    @name = name
    @price = price
    @isbn = isbn
    @quantity = quantity
    @discount = nil
  end

  def purchase(count)
    # raise error if there are no items

    if count > quantity
      count = quantity # only allow maximum number of items
    end
    @quantity -= count
  end

  def add_discount(amount)
    raise ArgumentError.new("Amount must be entered as percentage greater than 0 and less than 1") if amount.class != Float
    @discount = amount
  end

  def price
    @discount ? @price - (@price * @discount) : @price
  end
end
