text_filename = ARGV[0]
message_data = File.read(text_filename)
number_of_characters = message_data.length

braille_filename = ARGV[1]

#Create a Ruby program that prints the sample line of text provided above no
#matter what arguments are provided from the command line.

puts "Created '#{braille_filename}' containing #{number_of_characters} characters."
