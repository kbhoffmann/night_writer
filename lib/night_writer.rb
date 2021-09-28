require 'pry'
require './lib/converter_english_to_braille'

message_file = File.open(ARGV[0], "r")
message_data = message_file.read
message_file.close

letters = EnglishToBrailleConverter.new
braille = letters.braille_message(message_data)

braille_file = File.open(ARGV[1], "w")
braille_file.write(braille)
braille_file.close

puts "Created '#{ARGV[1]}' containing #{message_data.length} characters."
#if you want to write an array to a file you'll have to convert it to a string first using...
#this below (is called serialization)
#File.write("log.txt", [1,2,3].join("\n"), mode: "a")

#Create a Ruby program that prints the sample line of text provided above no
#matter what arguments are provided from the command line.

# print message_data
# print braille
