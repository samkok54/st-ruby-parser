require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
selected_node = bookstore.xpath("/book_store//book[name='The Nightingale']/preceding::*")
puts selected_node

# selected_node = bookstore.xpath("//book[price<4.0 and price> 3]")
# puts selected_node