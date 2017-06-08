class Book
  attr_accessor :title, :publication_year

  def initialize(title, publication_year)
    @title, @publication_year = title, publication_year
  end

  def to_s
    return "Title: #{self.title}, \n Publication Year: #{self.publication_year}"
  end
end
