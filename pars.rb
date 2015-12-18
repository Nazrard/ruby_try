
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'
(157..173).each do |k|

@name = Array.new
@adress = Array.new
@phone = Array.new
CSV.open("123.csv", 'ab') do |csv|
page = Nokogiri::HTML(open("-"),nil ,'UTF-8')
page.css('td#content div#content-padd div#clinics table tr td div.name').each do |el|
@name << el.text
end
page.css('td#content div#content-padd div#clinics div.address').each do |el|
	@adress << el.text
end
page.css('td#content div#content-padd div#clinics div.phones').each do |el|
	@phone << el.text
end
@name.zip(@adress, @phone).each {|n, a, b| csv << [n, a, b]}

sleep 5
end
end

