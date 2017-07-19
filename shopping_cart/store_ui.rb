require_relative './order_crud'
require_relative './product_crud'

class StoreUI

  def initialize
    @product_crud = ProductCRUD.new
    @order_crud = OrderCRUD.new

    @menu = <<-MENU
              1  - Cadastrar Produto
              2  - Pesquisar Produto
              3  - Excluir Produto
              4  - Listar Produtos
              5  - Comprar Produto
              6  - Listar Carrinho de compra
              7  - Finalizar Compra
              8  - Listar pedidos
              10 - Sair
            MENU
    @books = []
    @orders = []

  end

  def show_options
    puts @menu
  end

  def create_product(name, price)
    @product_crud.create(name, price)
  end

  def list_products
    products = @product_crud.list
    products.each { |product| puts product }

    if products.empty?
      puts "Lista de produtos vazia"
    end
  end

  def search_by(name)
    products = @product_crud.search_by(name)

    products.each { |product| puts product }

    if products.empty?
      puts "Não foi encontrado produto com o nome digitado"
    end
  end

  def delete_by(id)
    @product_crud.delete_by(id)
  end

  def buy_product(id)
    product = @product_crud.search_by(id)

    @order_crud.add_product(product[0])
  end

  def list_products_cart
    products = @order_crud.list_products

    products.each { |product| puts product }

    if products.empty?
      puts "Não há produtos no carrinho"
    end
  end

  def finish_order
    @order_crud.finish_order
  end

  def list_orders
    @order_crud.list
  end


end
