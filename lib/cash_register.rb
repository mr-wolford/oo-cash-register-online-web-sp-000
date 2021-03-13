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
  quantity.times { |x| @items << x }
  binding.pry
end



end
