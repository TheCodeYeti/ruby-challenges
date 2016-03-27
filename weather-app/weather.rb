require "rubygems"
require "weather-api"
require "geoplanet"
require "nokogiri"
%w{rubygems rest_client json}.each { |x| require x }


# class WoeidLookup
#
#   def get_woeid(location)
#     raw = get query_string(location)
#     Nokogiri::HTML(raw).at_xpath('.//woeid').content
#   rescue
#     nil
#   end
#
#   private
#
#     def query_string(location)
#       "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text%3D%22#{::CGI.escape(location)}%22%20and%20gflags%3D%22R%22"
#     end
#
#     def get(url)
#       open(url).read
#     end
#
# end
#
# def lookup_by_location(location)
#   lookup = WoeidLookup.new
#   woeid = lookup.get_woeid(location)
# end

client_id = "dj0yJmk9ekw3SGFIWWN6d0dhJmQ9WVdrOVZFVlpVMlZpTkdjbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1hZQ--"
client_secret = "4358bf1a99de38cdaa6efccb1acb1cb737267534"

GeoPlanet.appid = client_id
# GeoPlanet.debug = true
# ask for a location to search
# puts "Give me a location to search: "
# lookup_string = gets.chomp
lookup_response = GeoPlanet::Place.search("toronto")
# a = GeoPlanet::Place.new(lookup_response)
# woeid = Nokogiri::HTML(lookup_response).at_xpath('.//woeid').content
# lookup_result = place.search(lookup_string)

puts lookup_response.inspect

puts "test".inspect

# # uri = "http://where.yahooapis.com/v1/places.q(#{zipcode})?appid=[#{client_id}]"
# # woeid = Net::HTTP.get_response(uri)
# # p woeid

# response = Weather.lookup(location_id)
# puts response.title
# puts response.condition.temp
# puts response.condition.text

# require "yahoo_weatherman"
#
# weather_client = Weatherman::Client.new
# weather = weather_client.lookup_by_location('New York').methods
# puts weather.inspect
