require 'pry'
# require "./message.txt"

class NightWriter

   attr_accessor :message_file

   message = File.open(ARGV[0], "r")
   message_data = message.read.chomp.split("")
   message.close


  def initialize
    # @message_file = ARGV[0]
    # @braille = ARGV[1]
  end
# message_data = message.read.chomp.split("")
  # def self.open_message
  #   File.open(@message_file).read
  # end

  def self.put_message_into_array
    @message_file.chomp.split("")
  end

  def self.count_characters
    put_message_into_array.length
    # @message_file.chomp.split("")length
  end

  def self.convert_english_to_braille
    @message_file.find_braille_by_mulitple_letters
  end

  def self.print_created_message
    puts "Created '#{braille}' containing #{number_of_characters} characters."
  end

  def self.write_braille_file
    File.open(@braille, "w")
  end
end

# braille= File.open(ARGV[1], "w")
# braille.close

#if you want to write an array to a file you'll have to convert it to a string first using...
#this below (is called serialization)
#File.write("log.txt", [1,2,3].join("\n"), mode: "a")

#Create a Ruby program that prints the sample line of text provided above no
#matter what arguments are provided from the command line.

# print message_data
# print braille
