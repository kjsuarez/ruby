
require "rubygems"
require "crack"

xml = '
<?xml version="1.0" encoding="UTF-8"?>
<person>
  <first_name>Tim</first_name>
  <last_name>Berners-Lee</last_name>  
</person>
'

parsed_xml = Crack::XML.parse(xml)

puts parsed_xml['person']
puts parsed_xml['person']['first_name']
puts parsed_xml['person']['last_name']