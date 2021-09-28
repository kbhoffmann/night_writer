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
