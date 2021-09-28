require 'pry'

# Using your existing Ruby program as a template, create a new program called NightReader that prints a confirmation message to the terminal that contains the name of the file that the user input as their second argument.
# Calculate the number of characters in the file provided as input and include that in the confirmation message.

braille_message = File.open(ARGV[0], "r")
braille_message_data = braille_message.read.split
binding.pry

braille_message.close

print braille_message_data

number_of_characters = braille_message_data.length

english_message = File.open(ARGV[1], "w")
english_message.close

puts "Created '#{english_message}' containing #{number_of_characters} characters."
