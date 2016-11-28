require('minitest/autorun')
require_relative('../student')

class StudentSpec < MiniTest::Test


  def test_can_create_student()
     student = Student.new("Graeme", 9) 
  end

  def test_can_get_student_name()
    student = Student.new("Graeme", 9)

    assert_equal("Graeme",student.name)
  end

  def test_can_get_cohort_number()
    student = Student.new("Graeme", 9)

    assert_equal(9,student.cohortNo)
  end

  def test_student_can_talk()
    student =Student.new("Graeme", 9)

    assert_equal("I can Talk!",student.speak() )
  end

  def test_ask_student()
    student =Student.new("Graeme", 9)

    assert_equal("I love Ruby",student.ask("Ruby"))
  end

  def test_update_student_name()
      student =Student.new("", 0)

      student.name = "Graeme"

      assert_equal("Graeme", student.name)
  end

  def test_update_student_cohortNo()
      student =Student.new("", 0)

      student.cohortNo = 9
      
      assert_equal( 9, student.cohortNo)
  end

end