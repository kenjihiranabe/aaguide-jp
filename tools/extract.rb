#! /usr/bin/env ruby
require 'yaml'
$file=YAML.load_file(ARGV[0])
$sections = $file["sections"]
puts $file["title"]
puts "\n"
$sections.each { |s|
if s["type"] == "desc" then
	puts s["text"]
end
}
