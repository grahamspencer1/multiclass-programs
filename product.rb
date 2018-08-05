class Product

  def initialize(name, price)
    @name = name
    @price = price
    @quantity = 1
  end

  attr_accessor :name, :price, :quantity

  def total_products
    @price *=  @quantity
  end
end
