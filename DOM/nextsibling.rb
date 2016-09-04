require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
first = bookstore.xpath("//book").first
second = first.next_element
forth_from_second = second.next_element.next_element
forth_from_first = first.next_element.next_element.next_element
puts forth_from_second.css("name")
puts forth_from_first.css("name")