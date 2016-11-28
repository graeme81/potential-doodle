class Student

attr_accessor :name
attr_accessor :cohortNo


  def initialize(name, cohortNo)
    @name = name
    @cohortNo = cohortNo
  end

  def speak()
    return "I can Talk!"
  end

  def ask(fav)
    return "I love #{fav}"
  end

end