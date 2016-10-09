require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
selected_node = bookstore.at_xpath("//book[name=\"Percy Jackson's Greek Gods\"]")
before = selected_node.xpath("../book[last()-4]");
puts before