
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end
  
  def total
    @total
    return @total
  end
  
  def apply_discount
    @total -= (@total * @discount)/100
  end
  
  def add_item(title, price, quant = 0)
    @total += price
  end
  
  def apply_discount
    @total = (@total * @discount)
  end
  
  def void_last_transaction(lastItemCost)
    @total -+ lastItemCost
  end
    
end

cash_register = CashRegister.new