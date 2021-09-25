text_filename = ARGV[0]
message = File.open(text_filename)
# message_data = message.readlines
message_data = File.read(text_filename).chomp.split("")
message.close
number_of_characters = message_data.length

braille_filename = ARGV[1]
braille = File.open(braille_filename, "w")
braille.close
#if you want to write an array to a file you'll have to convert it to a string first using...
#this below (is called serialization)
#File.write("log.txt", [1,2,3].join("\n"), mode: "a")

#Create a Ruby program that prints the sample line of text provided above no
#matter what arguments are provided from the command line.

puts "Created '#{braille_filename}' containing #{number_of_characters} characters."
# print message_data
# print braille
