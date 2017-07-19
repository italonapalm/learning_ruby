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
    products.each { |product| puts product}

    if products.empty?
      puts "Lista de produtos vazia"
    end
  end

  def search_by(name)
    products = @product_crud.search_by(name)

    products.each { |product| puts product}

    if products.empty?
      puts "Não foi encontrado produto com o nome digitado"
    end
  end

  def delete_by(id)
    @product_crud.delete_by(id)
  end


end
