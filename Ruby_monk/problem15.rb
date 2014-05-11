# A restaurant has incoming orders for which you need to compute the costs based on the menu.

# You might get multiple orders at times.

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    total = 0
    if orders.length == 1
      orders[0].each {|key, value| total += (orders[0][key]*@menu[key])} 
    else
      orders.each do |order|
        order.each {|key,value| total += order[key]*@menu[key]}
      end
    end
    return total
  end
end
