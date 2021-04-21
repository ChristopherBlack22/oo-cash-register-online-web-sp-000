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
    binding.pry
    (@total.to_f/100) * (100-@discount)
   # binding.pry
  end 
  
end 
