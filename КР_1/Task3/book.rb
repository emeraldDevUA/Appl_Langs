# frozen_string_literal: true

class Book
  attr_reader :name
  attr_reader :age
  attr_reader :author
  attr_reader :date

  attr_writer :name
  attr_writer :age
  attr_writer :author
  attr_writer :date


  def Book(name,author,age,date)
    @name = name
    @author = author
    @age = age
    @date = date
  end

end
