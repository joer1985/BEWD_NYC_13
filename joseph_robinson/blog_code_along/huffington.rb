require_relative 'lib/post'
require_relative 'lib/author'

puts 'Welcome to the Huffington Post command line application'
puts 'Please enter your information below:'

author = Author.new
puts 'First Name:'
author.first_name = gets.strip
puts 'Last Name:'
author.last_name = gets.strip
puts 'Email:'
author.email = gets.strip

puts "Thanks #{author.full_name}. Please enter your article below:"

post = Post.new
puts 'Title:'
post.title = gets.strip
puts 'Body:'
post.body = gets.strip
post.author = author

puts '---'

puts "Title: #{post.title}"
puts "By: #{post.author.full_name}"
puts post.body

