class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end
