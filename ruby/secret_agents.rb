=begin
-Define method encrypt
  -use to move the characters of a string one letter forward.
      -create empty variable for output
      -set index to 0
      -set variable for alphabet string to keep the index from 0..25
      -take index of each letter in password and matches it to the alphabet index, index_in_alpha is the  resulting integer
      -add 1 to index_in_alpha integer to get new index number
      -apply new_index number to alphabet string and add this to the new_password.
      -(loop) apply this process to each letter in the password
  - add 1 to index to prevent infinite loop
- Define method encrypt and do the same as above except subtract -1 from index_in_alpha to get new index
-OUTPUT: encrypted word || decrypted word
=end

# BEGIN METHOD DECLARATIONS
def encrypt(password) #names method, declares parameter
  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
    index_in_alpha =  alphabet.index(password[index])
    # ^ takes index of each letter in password and matches it to the alphabet index, index_in_alpha is the resulting integer
      if index_in_alpha == 25
        new_index = 0
      else
        new_index = index_in_alpha + 1
      end
    new_pass += alphabet[new_index] #new_pass = new_pass + alphabet[new_index]
    index += 1
  end
  new_pass #return
end

encrypt("zed") #invoke the method


def decrypt(password)

  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < password.length
    index_in_alpha =  alphabet.index(password[index]) #integer
    new_index = index_in_alpha - 1
    new_pass += alphabet[new_index]
    index += 1
  end
  new_pass #return
end

decrypt("afe")

decrypt(encrypt("swordfish"))
# the encrypt method is called first and moves the index forward one, then the decrypt method is called on the encrypted text and moves the index back one. They use the same index which is why decrypt works on the results for encrypt.

# BEGIN DRIVER CODE

#Ask user if they want to encrypt or decrypt.
#Create a variable for response (not encrypt or decrypt)
#Capture response and apply appropriate method
#Ask user for the password
#Capture response and use method
#Create loop until user types "encrypt" or "decrypt"
#Print results to screen

puts "Do you want to encrypt or decrypt your password?"
encoding_type = gets.chomp


while encoding_type != "encrypt" || encoding_type != "decrypt"
   if encoding_type == "encrypt"
      puts "What is your password?"
      password = gets.chomp
      puts encrypt(password)
      break
    elsif encoding_type == "decrypt"
      puts "What is your password?"
      password = gets.chomp
      puts decrypt(password)
      break
    else
      puts "Please enter either encrypt or decrypt."
      encoding_type = gets.chomp
    end
end




