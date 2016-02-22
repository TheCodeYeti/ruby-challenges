require "rubygems"
require "twilio-ruby"

answers = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
]

account_sid = "ACd788c0fc9537c4087f60481aebe0d53b"
auth_token = "b15e76113497b58df935fdd8f53cbf1c"
account_number = "+16137779337"

@client = Twilio::REST::Client.new(account_sid, auth_token)
puts "Ask the Magic 8 Ball any question you wish: "
question = gets.chomp
answer_number = rand(20)
response = answers[answer_number]

message = @client.account.messages.create(
    from: "+16137779337",
    to: "+16135398488",
    body: "question: " + question + " -- Answer: " + response
)

puts "Sent to: " + message.to
