$ALPHABET = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
#{26 letters last letter index 25

def caesar_cipher(word, num)
    cipher_word = ""
    word.split("").each do |letter|
      index_of_letter = $ALPHABET.find_index(letter.downcase)
      if index_of_letter != nil
        if letter != $ALPHABET[index_of_letter]
          cipher_word += ($ALPHABET[index_cipher_letter(index_of_letter, num)]).upcase
        else
          cipher_word += ($ALPHABET[index_cipher_letter(index_of_letter, num)]).downcase
        end
      else
        cipher_word += letter
      end
    end
    return cipher_word
end

def index_cipher_letter(index_of_letter, num)
  indexCipher = index_of_letter + num
  if indexCipher > 25
    indexCipher -= $ALPHABET.length
  else
    indexCipher
  end
end

puts "Type a word: "
word = gets.chomp
puts "Type a number between 1-25: "
num = (gets.chomp).to_i
puts "\n\n\nPlain Text:  #{word}\n\n"
puts "Caesar Cipher Text: #{caesar_cipher(word, num)}"

