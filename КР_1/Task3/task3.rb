# frozen_string_literal: true
require './book.rb'

book = Book.new
book.Book("name","auth",10,"20.02.1976")

puts book.name

book.name = "name2"

puts book.name