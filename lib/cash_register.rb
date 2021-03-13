require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

def initialize(discount = nil)
  @total = 0
  @items = []
  if discount != nil
    x = 100.0 - discount
    @discount = x * 0.01
  else
    @discount = nil
  end
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  adjusted_price = price * quantity
  @total = @total + adjusted_price
  @items.fill(title, @items.size, quantity)
end

def apply_discount
  discounted_price = @total - @discount
end

end
