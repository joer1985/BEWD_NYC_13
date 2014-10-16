require 'rest-client'
require 'pry'
require 'JSON'

class Read
  def initialize
    @time_divider = 5  
  end
  
  def time_wasted=(time_entered)
    @time_wasted = time_entered
  end

  def time_wasted
    @time_wasted
  end

  def limiter
    url = 'http://www.reddit.com/.json'
    response = RestClient.get(url)
    parsed_response = JSON.parse(response)
    headlines = parsed_response['data']['children'].map do |post|
        post['data']['title']
    end

    if @time_wasted < @time_divider
      puts 'Here are 2 items to read'
      puts "Title: #{headlines.take(2)}" 
      
    elsif @time_wasted > @time_divider
      puts 'Here are 5 items to read'      
      puts "Title: #{headlines.take(5)}" 
      
    end
  end

end

session = Read.new



puts 'Welcome to Reddit Time Manager'
puts
puts 'This application will give you some articles based on the amount fo time you want to spend'
puts
puts 'How many minutes do you have?'

session.time_wasted = gets.strip.to_i
session.limiter









