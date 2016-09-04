require 'csv'
require 'nokogiri'

$xml_doc = Nokogiri::XML::DocumentFragment.parse <<-EOXML
<?xml version="1.0" encoding="UTF-8"?>
<book_store></book_store>
EOXML
$header = ['name', 'author', 'type', 'ISBN', 'price', 'publisher', 'page']
$first = true
$book_store = $xml_doc.at_css("book_store")
CSV.foreach('60books.csv') do |i|
  if $first
    $first = false
    next
  else
    $index = 0
    book = Nokogiri::XML::Node.new("book", $xml_doc)
    i.each do |j|
      if $index == i.length - 1
        break
      end
      child = Nokogiri::XML::Node.new($header[$index], $xml_doc)
      child.content = j
      child.parent = book
      $index += 1
    end
    book.parent = $book_store
  end
end

FILE = open("books.xml", "w")
FILE.write($xml_doc)