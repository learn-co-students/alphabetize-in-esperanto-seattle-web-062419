
  ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
ENCODE_ESPERANTO_ALPHABET = "01abcdefghijklmnopqrstuvwxyz"
def alphabetize(arr)
  alphabet_encoder = {}
  ESPERANTO_ALPHABET.each_char.with_index do |char, i| 
    alphabet_encoder[char] = ENCODE_ESPERANTO_ALPHABET[i]
  end
  arr.sort_by do |string| 
    encode_str = ''
    string.each_char do |char|
      if alphabet_encoder.key?(char)
        encode_str += alphabet_encoder[char]
      else
        encode_str += char
      end
    end
    encode_str
  end
end
 
  # code here
