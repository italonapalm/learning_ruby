require_relative './book_ui'

book_ui = BookUI.new
loop do
  book_ui.show_options
  option = gets.chomp.to_i

  system("clear")
  case option
  when 1
    # Create
    system("clear")
    book_ui.create
    system("clear")
  when 2
    # Index
    system("clear")
    book_ui.index
  when 3
    # Search
    puts "Title or publication year:"
    word = gets.chomp
    book_ui.search_by(word)
  when 4
    # Delete
    puts "Title to be deleted:"
    title = gets.chomp
    book_ui.delete_by(title)
  else
    "Invalid option."
  end

  # Exit
  break if option == 5
end
