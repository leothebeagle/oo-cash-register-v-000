require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = (@total * (1 - @discount/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end
end
