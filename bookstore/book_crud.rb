require_relative './book'

class BookCrud

  def initialize
    @books = []
  end

  def create(title, publication_year)
    book = Book.new(title, publication_year)
    @books << book
  end

  def index
    @books
  end

  def search_by(word)
    @list_book = []

    @books.each do |book|
      if book.title == word || book.publication_year == word.to_i
        @list_book << book
      end

    end

    @list_book

  end

  def delete_by(title)
    @books.delete_if {|book| book.title == title}

  end

end
