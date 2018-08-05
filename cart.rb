require "./product.rb"

tax_rate = 0.15

class Cart

  def initialize
    @shopping_cart = []
  end

  def add_product(product)
    @shopping_cart << product
  end

  def remove_product(product)
    @shopping_cart.delete(product)
  end

  def total_pre_tax
    @total_price = 0
    @shopping_cart.each do |product|
      @total += product.list
    end
    return @total
  end

  def total_post_tax
    sum = @total *= @tax_rate
    return sum.round(2)
  end

end

apples = Product
