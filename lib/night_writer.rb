message = File.open(ARGV[0], "r")
message_data = message.read
#re-add .chomp to remove newline?
#moved .chomp.split("") to number_of_characters line before .length
message.close

print message_data

number_of_characters = message_data.chomp.split("").length

braille= File.open(ARGV[1], "w")
braille.close

puts "Created '#{braille}' containing #{number_of_characters} characters."
#if you want to write an array to a file you'll have to convert it to a string first using...
#this below (is called serialization)
#File.write("log.txt", [1,2,3].join("\n"), mode: "a")

#Create a Ruby program that prints the sample line of text provided above no
#matter what arguments are provided from the command line.

# print message_data
# print braille
