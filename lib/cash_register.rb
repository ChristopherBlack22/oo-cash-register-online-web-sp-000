require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @items << title
    @total += (price*quantity)
  end 
  
  def apply_discount
    @total = ((@total.to_f/100) * (100-@discount)).to_i
    if @discount == 0 
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  
end 
