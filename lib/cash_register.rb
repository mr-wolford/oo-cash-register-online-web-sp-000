require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  adjusted_price = price * quantity
  @total = @total + adjusted_price
  @items.fill(title, @items.size, quantity)
end

def add_discount
  if @discount != nil
    x = 100.0 - @discount.to_f
    percentage = x * .01
    adjusted_price = @total * percentage
    puts "After the discount, the total comes to $#{adjusted_price}."


end

end
