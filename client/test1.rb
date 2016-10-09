require 'savon'
require 'nokogiri'

client = Savon::Client.new(wsdl: "http://localhost:3000/rumbas/wsdl")

# puts client.operations # => [:integer_to_string, :concat, :add_circle]
# { :by => 0b00000001, :name => "testbook", :author => "me", :type => "test",
#   :ISBN => 123456789, :price => 18000, :publisher => "me.co.ltd",
#   :page => 1}

if ARGV[0] == "add"
  result = client.call(:add, message: { :by => 0b00000001, :name => "testbook", :author => "me", :type => "test",
                                           :ISBN => 123456789, :price => 18000, :publisher => "me.co.ltd",
                                           :page => 1})
elsif ARGV[0] == "remove"
   result = client.call(:remove, message: { :by => 0b00000011, :name => "name='testbook'", :author => "author='me'", :type => nil,
                                            :ISBN => nil, :price => nil, :publisher => nil,
                                            :page => nil})
elsif ARGV[0] == "search"
  result = client.call(:search, message: { :by => 0b00010000, :name => "name='testbook'", :author => "author='me'", :type => nil,
                                           :ISBN => nil, :price => "price>3", :publisher => nil,
                                           :page => nil})
end

# puts result
#
# # actual wash_out
result = result.to_hash # => {:concat_reponse => {:value=>"123abc"}}
result = result[(ARGV[0]+"_response").to_sym][:value]
result = Nokogiri::XML result;
if ARGV[0] == "search"
  puts result.xpath("//name").children
else
  puts result.xpath("//result").children
end

# wash_out below 0.3.0 (and this is malformed response so please update)
# result.to_hash # => {:value=>"123abc"}