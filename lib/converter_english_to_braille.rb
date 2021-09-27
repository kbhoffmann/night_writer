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
             "k" => "..\n..\n..",
             "l" => "0.\n0.\n0.",
             "m" => "..\n0.\n..",
             "n" => ".0\n..\n..",
             "o" => "0.\n..\n..",
             "p" => "..\n..\n0.",
             "q" => "..\n..\n00",
             "r" => "..\n..\n..",
             "s" => "..\n.0\n..",
             "t" => ".0\n..\n..",
             "u" => ".0\n0.\n..",
             "v" => "..\n..\n..",
             "w" => "..\n.0\n..",
             "x" => ".0\n..\n..",
             "y" => "..\n0.\n..",
             "z" => "..\n.0\n.."
            }
  end

  def turn_message_to_array(letters)
    split_letters = letters.chomp.split("").map do |letter|
      letter
    end
  end

  # def find_braille_by_letter(letter)
  #   @dictionary[letter]
  # end

  def find_braille_by_letter(letters)
    characters = turn_message_to_array(letters).map do |letter|
      @dictionary[letter]
    end.compact[0]
  end


end
