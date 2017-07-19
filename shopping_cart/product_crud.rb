require_relative './product'

class ProductCRUD
  def initialize
    @products = []
    @counter = 0
  end

  def create(name, price)
    product = Product.new(name, price)
    @counter += 1
    product.id = @counter

    @products << product
    system("clear")
    puts "Produto cadastrado com sucesso!"
  end

  def list
    system("clear")
    @products
  end

  def search_by(name)
    system("clear")
    @list_products = []

    @products.each do |product|
      if product.name == name
        @list_products << product
      end
    end

    @list_products

  end

  def delete_by(id)
    system("clear")
    @products.delete_if { |product| product.id == id }
    puts "Produto deletado com sucesso!"
  end
end
