require "rubygems"
require "weather-api"
require "geoplanet"

client_id = "dj0yJmk9ekw3SGFIWWN6d0dhJmQ9WVdrOVZFVlpVMlZpTkdjbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1hZQ--"
client_secret = "4358bf1a99de38cdaa6efccb1acb1cb737267534"

puts "Give me your zip or postal code: "
lookup_code = gets.chomp

# uri = "http://where.yahooapis.com/v1/places.q(#{zipcode})?appid=[#{client_id}]"
# woeid = Net::HTTP.get_response(uri)
# p woeid

response = Weather.lookup(lookup_code)
puts response.title
puts response.condition.temp
puts response.condition.text
