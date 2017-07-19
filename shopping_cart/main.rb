require_relative './store_ui'

store = StoreUI.new

loop do
  store.show_options
  option = gets.chomp.to_i


  case option
    when 1
      # Create Product
      puts "Name:"
      name = gets.chomp
      puts "Preço:"
      price = gets.chomp.to_f

      store.create_product(name, price)
    when 2
      puts "Digite o nome:"
      name = gets.chomp
      store.search_by(name)
    when 3
      puts "Id do produto:"
      id = gets.chomp.to_i
      store.delete_by(id)
    when 4
      # List Products
      store.list_products
    else
      # Invalid Option
      "Opção Inválida"
  end

  break if option == 10
end
