require 'nokogiri'

doc = Nokogiri::XML(File.open("books.xml"))
doc.xpath('//book').each do

 |book|
 if book.at_css('price').content.to_i > 10  and
       book.at_css('price').content.to_i < 20          
    puts "\n--> " + book.at_css('name').content
    puts "Author   : " + book.at_css('author').content
    puts "Price   : " + book.at_css('price').content
 end
end
