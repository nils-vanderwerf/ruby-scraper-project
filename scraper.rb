require 'nokogiri'
require 'httparty'
require 'byebug'

##scraper functionality lives here
def scraper
    url = "https://www.groupon.com.au/" ##Source web page link
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    byebug
end

scraper
