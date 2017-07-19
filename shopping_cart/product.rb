class Product
  attr_accessor :id, :name, :price

  def initialize name, price
    @name = name
    @price = price
  end

  def to_s
    "Id Produto: #{self.id}, \n Nome: #{self.name}, \n Preço: #{self.price}"
  end
end
