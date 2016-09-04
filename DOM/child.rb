require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
The_Night_Circus = bookstore.at_xpath("//book[name='The Night Circus']")
child = The_Night_Circus.children
elem = child.at_css("name")
while elem != nil
  puts elem
  elem = elem.next_element
end