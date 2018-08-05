require_relative 'product'

class Cart

  def initialize
    @shopping_cart = []
    @tax = 0.15
  end

  def add(product)
    @shopping_cart << product
  end

  def remove(product)
    @shopping_cart.delete(product)
  end

  def total_before_tax
    @total = 0
    @shopping_cart.each do |product|
      @total += product.total_products
    end
    return @total
  end

  def total_after_tax
    sum = @total + (@total * @tax)
    return sum.round(2)
  end
end

ipod = Product.new("iPod", 99.99)
iphone = Product.new("iWatch", 299.99)
iwatch = Product.new("iPhone", 699.99)

cart = Cart.new
cart.add(ipod)
ipod.quantity = 3

cart.add(iwatch)
iwatch.quantity = 2

cart.add(iphone)
iphone.quantity = 1

p cart
puts ""
puts "Total before tax: #{cart.total_before_tax}"
puts "Total after tax: #{cart.total_after_tax}"
