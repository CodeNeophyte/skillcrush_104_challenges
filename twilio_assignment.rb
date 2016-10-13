require 'rubygems'
require 'twilio-ruby'

# variables
answer = ''

# methods
def magic_ball(question)
  random_number = (1 + rand(20))
  random_answer = ''
  case random_number.to_s
    when '1'
      random_answer = 'It is certain'
    when '2'
      random_answer = 'It is decidedly so'
    when '3'
      random_answer = 'Without a doubt'
    when '4'
      random_answer = 'Yes, definitely'
    when '5'
      random_answer = 'You may rely on it'
    when '6'
      random_answer = 'As I see it, yes'
    when '7'
      random_answer = 'Most likely'
    when '8'
      random_answer = 'Outlook is good'
    when '9'
      random_answer = 'Yes'
    when '10'
      random_answer = 'Signs point to yes'
    when '11'
      random_answer = 'Reply hazy try again'
    when '12'
      random_answer = 'Ask again later'
    when '13'
      random_answer = 'Better not tell you now'
    when '14'
      random_answer = 'Cannot predict now'
    when '15'
      random_answer = 'Concentrate and ask again'
    when '16'
      random_answer = 'Don\'t count on it'
    when '17'
      random_answer = 'My reply is no'
    when '18'
      random_answer = 'My sources say no'
    when '19'
      random_answer = 'Outlook is not so good'
    when '20'
      random_answer = 'Very doubtful'
    end
    random_answer
end

account_sid = "Masked"
auth_token = "Masked"

@client = Twilio::REST::Client.new(account_sid, auth_token)

# question
puts "Please ask a Yes or No question."
question = gets.chomp

answer = magic_ball(question)
message = @client.account.messages.create(
  :from => "Masked",
  :to => "Masked",
  :body => "The answer to your question is: #{answer}"
)

puts message.body
