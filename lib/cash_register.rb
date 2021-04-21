require "pry"
class CashRegister
  
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price*quantity)
  end 
  
  def apply_discount
    @total = ((@total.to_f/100) * (100-@discount)).to_i
    "After the discount, the total comes to $#{@total}."
    if @discount == 0 
      "There is no discount to apply"
    end 
  end 
  
end 
