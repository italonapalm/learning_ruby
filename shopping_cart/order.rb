class Order
  attr_accessor :order_number, :products

  def initialize order_number
    @order_number = order_number
    @products = []
  end


end
