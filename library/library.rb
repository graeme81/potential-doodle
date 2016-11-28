class Library

  attr_reader :book

  def initialize(book)
    @book = book
  end

  def details_on_book(book)
    name = @book[book][:student_name]
    date = @book[book][:date]

    details = name + " " + date

    return details
    
  end

  def add_book(new_book)
    
   Library.new({new_book.to_sym => {student_name:"",date:"" }})
  end

end