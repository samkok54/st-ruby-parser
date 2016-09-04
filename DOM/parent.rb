require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
name_The_Night_Circus = bookstore.at_xpath("//book[name='The Night Circus']//name") # <name>The Night Circus</name>
book = name_The_Night_Circus.parent
puts book

book = book.next_element
puts book