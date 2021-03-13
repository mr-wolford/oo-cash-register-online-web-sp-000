class CashRegister
  attr_accessor :discount, :total, :items

@@items = []

def initialize(discount = nil)
  @total = 0
  @discount = discount
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  adjusted_price = price * quantity
  @total = @total + adjusted_price
  @@items << title
end



end
