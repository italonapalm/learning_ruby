require_relative './book_crud'

class BookUI

  def initialize
    @book_crud = BookCrud.new
    @menu = <<-MENU
            1. Create
            2. List
            3. Search
            4. Delete
            5. Exit
           MENU

  end

  def show_options
    puts @menu

  end

  def create
    puts "Title:"
    title = gets.chomp
    puts "Year publication:"
    year_publication = gets.chomp.to_i
    @book_crud.create(title, year_publication)
  end

  def index
    books = @book_crud.index
    books.each { |book| puts book }

    if books.empty?
      puts "Library is empty."
    end
  end

  def search_by(word)
    books = @book_crud.search_by(word)

    books.each do |book|
      puts "Book: #{book}"
    end

    if books.empty?
      puts "Couldn't find book."
    end

  end

  def delete_by(title)
    @book_crud.delete_by(title)
    puts "Book deleted"

  end
end
