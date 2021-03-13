require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :void

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

def apply_discount
  if @discount != nil
    x = 100.0 - @discount.to_f
    percentage = x * 0.01
    adjusted_price = @total * percentage
    self.total = adjusted_price
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction


end
