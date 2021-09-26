require './module/english_to_braille_dictionary'

class EnglishToBrailleConverter
  include EBDictionary

  def find_braille_by_letter(letter)
    dictionary[letter]
  end
  
  def find_braille_by_mulitple_letters(letters)
    letters.map do |letter|
      dictionary[letter]
    end
  end
end
