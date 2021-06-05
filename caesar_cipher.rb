#Caesar Cipher


#You will need to remember how to convert a string into a number.
#Don’t forget to wrap from z to a.
#Don’t forget to keep the same case.
#require 'pry'     #  binding.pry
string = "aBc! '123' ?XyZ"

shifter = 11


def caesar_cipher(string, shifter)
  character = ""
  str_arr = string.split(//)
  ascii_arr = str_arr.map do |char| 
    
    if (char.ord >= 65 && char.ord <= 90) || (char.ord >= 97 && char.ord <= 122)
      character = char.ord 
    
     #UPPER CASE 65-90  ASCII
      if character >= 65 && character <= 90
        character = character + shifter
        character > 90 ? character = character - 26 : character
        character = character.chr
      
     #lower case 97-122
      else character >= 97 && character <= 122
        character = character + shifter
        character > 122 ? character = character - 26 : character
        character = character.chr
      end  
    else
      character = char
    end
    character
  end
  ascii_arr.join
end

p caesar_cipher(string, shifter)
#lower case 97-122
