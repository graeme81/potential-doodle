require('minitest/autorun')
require('../library')

class LibrarySpec < MiniTest::Test

  def test_can_create_library()
    library = Library.new({LOTR:{student_name: "Jeff", date: "1/12/16" }})
  end

  def test_can_get_library_details()
    library = Library.new({LOTR:{student_name: "Jeff", date: "1/12/16" }})

    assert_equal({LOTR:{student_name: "Jeff", date: "1/12/16" }}, library.book)
  end

  def test_can_get_book_details()
    library = Library.new({LOTR:{student_name: "Jeff", date: "1/12/16" }})

    assert_equal("Jeff 1/12/16",library.details_on_book(:LOTR))

  end

  def test_add_book_to_library()
    library = Library.new({LOTR:{student_name: "Jeff", date: "1/12/16" }})

    library.add_book("BFG")
    #assert_equal("   ",library.details_on_book(:BFG))
  end

end