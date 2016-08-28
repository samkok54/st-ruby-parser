require 'nokogiri'
include Nokogiri

class MyDoc < Nokogiri::XML::SAX::Document
 attr_accessor :is_name
 attr_accessor :is_author
 attr_accessor :is_price


  def initialize
    @is_name = false
    @is_auhtor=false
    @is_price=false
  end

  def end_document
    #puts "the document has ended"
  end

  def start_element name, attributes = []
    @is_name = name.eql?("name")
    @is_author = name.eql?("author")
    @is_price = name.eql?("price")
  end

  def characters string
    string.strip!
    if @is_name and !string.empty?
      puts "\n--> Name: #{string}"
    end
    if @is_author and !string.empty? 
       puts "Author: #{string}"
    end
    if @is_price and !string.empty? 
       puts "Price: #{string}"
    end
  end
end

# Create our parser
parser = Nokogiri::XML::SAX::Parser.new(MyDoc.new)
# Send some XML to the parser
parser.parse(File.open("books.xml"))
