
class CashRegister
  
  attr_accessor :total, :discount, :prevTotal, :items
  
  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end
  
  def total
    @total
    return @total
  end
  
  def add_item(title, price, quantity = 1)
    # @prevTotal = @total
    @total += (price * quantity)
    # @items.push(title)
  end
  
  def apply_discount
    @total -= (@total * @discount)/100
  end
  
  def void_last_transaction(lastItemCost)
    @total -+ lastItemCost
  end
    
end

cash_register = CashRegister.new(20)