require 'nokogiri'
include Nokogiri

class MyDoc < Nokogiri::XML::SAX::Document
 attr_accessor :is_name
 attr_accessor :is_author
 attr_accessor :is_price
 attr_accessor :check
 attr_accessor :nameB


  def initialize
    @is_name = false
    @is_auhtor=false
    @is_price=false
    @check = false
    @nameB = ""
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
       @nameB=string
    end
    if @is_author and !string.empty? and string == "J.K. Rowling"
       puts "\n--> Name: #{@nameB}"
       puts "Author: #{string}"
       @check=true
    end
    if @is_price and !string.empty? and @check
       puts "Price: #{string}"
       @check=false
    end
  end
end

# Create our parser
parser = Nokogiri::XML::SAX::Parser.new(MyDoc.new)
# Send some XML to the parser
parser.parse(File.open("books.xml"))
