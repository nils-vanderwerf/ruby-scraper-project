require 'nokogiri' ##APi for querying HTML documents
require 'httparty' ##getting the url
# require 'byebug' ##debugger

##scraper functionality lives here
def scraper
    url = "https://www.groupon.com.au/" ##Source web page link
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    activity_cards = parsed_page.css('figure.card-ui')
    puts "Number of cards is #{activity_cards.count}"
    # byebug
end

scraper
