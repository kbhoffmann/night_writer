# require './lib/night_writer'
require 'pry'

class EnglishToBrailleConverter

  def initialize
    @dictionary = {
             "a" => "0.\n..\n..",
             "b" => "0.\n0.\n..",
             "c" => "00\n..\n..",
             "d" => "00\n.0\n..",
             "e" => "0.\n.0\n..",
             "f" => "00\n0.\n00",
             "g" => "00\n00\n..",
             "h" => "0.\n00\n..",
             "i" => ".0\n0.\n..",
             "j" => ".0\n..\n..",
             "k" => "0.\n..\n0.",
             "l" => "0.\n0.\n0.",
             "m" => "..\n0.\n..",
             "n" => "00\n.0\n0.",
             "o" => "0.\n.0\n0.",
             "p" => "00\n0.\n0.",
             "q" => "00\n00\n0.",
             "r" => "0.\n00\n0.",
             "s" => ".0\n0.\n0.",
             "t" => ".0\00\n0.",
             "u" => "0.\n..\n00",
             "v" => "0.\n0.\n00",
             "w" => ".0\n00\n.0",
             "x" => "00\n..\n00",
             "y" => "00\n0.\n00",
             "z" => "0.\n.0\n00",
             " " => "..\n..\n..",
             "." => "..\n00\n.0"
            }
  end

  def turn_message_to_array(letters)
    split_letters = letters.downcase.chomp.split("").map do |letter|
      letter
    end
  end

  def find_braille_by_letter(letters)
      characters = turn_message_to_array(letters).map do |letter|
        @dictionary[letter]
      end.join("\n")
  end

  def shorten(letters)
    letters.scan(/.{1,30}/)
  end

  def braille_message(letters)
    shorten(letters).map do |letter|
      find_braille_by_letter(letter)
    end
  end

  # def shorten(letters)
  #   if turn_message_to_array(letters).length >= 80
  #     shortened = letters.scan(/.{1,30}/)
  #     short = shortened.flat_map do |short|
  #       x = turn_message_to_array(short)
  #         x.filter_map do |letter|
  #         @dictionary[letter]
  #       end.join("\n")
  #     end
  #   else
  #     find_braille_by_letter(letters)
  #   end
  # end
end


      # separated = characters.join("\n")
      # console.log(separated)
#   def separted
#     find_braille_by_letter
#   end
#   var str = array.join(' ')+'.';
# console.log(str)
