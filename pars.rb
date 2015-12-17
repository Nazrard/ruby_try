
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'
#(74..173).each do |k|

=begin
baza = File.open('/home/nazrard/ruby_try/baza.txt', 'a')
page = Nokogiri::HTML(open("-"),nil ,'UTF-8')
page.css('td#content div#content-padd div#clinics table tr td div.name').each do |el|
	adress = el.text
	baza.puts adress
end
baza.close
end
=end
=begin
CSV.open("123.csv", 'ab') do |csv|
	a = "haha"
	b = "bebe"
	csv << [a,b]
	#csv << ["row", "of", "CSV", "data"]
	#sv << ["another", "row"]
end
=end
CSV.open("123.csv", 'ab') do |csv|
page = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/HTML"),nil ,'UTF-8')
page.css('div#content div#bodyContent table.infobox tr th').each do |el|
	adress = el.text
	puts adress
	csv << [adress, adress]
end
end
=begin
CSV.open("path/to/file.csv", "wb") do |csv|
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
end
=end
