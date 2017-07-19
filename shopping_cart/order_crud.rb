require_relative './order'

class OrderCRUD
  def initialize
    @orders = []
  end

  def create
    @order = Order.new
  end

  def list
  end

  def search_by(number)
    @list_orders = []

    @orders.each do |order|
      if order.order_number == order
        @list_orders << order
      end
    end

    @list_orders
  end

  def delete_by(number)
    @orders.delete_if { |order| order.order_number == number }
  end
end
