require_relative './order'

class OrderCRUD
  def initialize
    @orders = []
    @counter = 1
    @order = Order.new(@counter)

  end

  def create
    @counter += 1
    @order = Order.new(@counter)

    @order.order_number = @counter
  end

  def add_product(product)
    @order.products << product

    system("clear")
    puts "Produto (#{product.name}) adicionado com sucesso!"
  end

  def finish_order
    system("clear")
    @orders << @order
    self.create
    puts "Pedido finalizado!"

  end

  def list
    system("clear")

    unless @orders.empty?
      @orders.each do |order|
        puts "--------------------"
        puts "Pedido #{order.order_number}"
        puts "======PRODUTOS======"
        order.products.each do |product|
          puts product
        end
      end
    else

      puts "Não há pedidos"
    end
  end

  def list_products
    system("clear")
    @order.products
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
