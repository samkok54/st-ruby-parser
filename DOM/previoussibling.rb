require 'nokogiri'

bookstore = Nokogiri::XML open('books.xml').read
The_Night_Circus = bookstore.at_xpath("//book[name='The Night Circus']")
before_The_Night_Circus = The_Night_Circus.previous_element
puts before_The_Night_Circus

# at_xpath = xpath.first