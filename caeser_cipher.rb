#Caeser Cipher Project

def cc_encrypt(input_string, shift)
  
    # Get the input message
    if input_string == ""
        puts "Please enter a message to encrypt..."
        input_string = gets.chomp
    end

    # Get the shift value
    if shift == 0
        puts "Please enter a number to shift by..."
        shift = gets.chomp.to_i
    end

    encrypted_text = []

    # Split the string into an array
    input_string = input_string.split("")

    # Iterate through each character in the input string
    input_string.each do |character|

        # Check that the character is actually a letter
        if character.match?(/[[:alpha:]]/)

            # Formula for Caesar Cipher
            shifted_character = character.ord + shift

            # Ensure shifted character stays within range of alphabet
            if shifted_character > "Z".ord && shifted_character < "a".ord
                shifted_character -= 26
            elsif shifted_character > "z".ord
                shifted_character -= 26
            end

            encrypted_text.push(shifted_character.chr)
        else
            encrypted_text.push(character)
        end
    end
    
    puts "Original text: #{input_string.join()}"
    puts "Encrypted text: #{encrypted_text.join()}"

end

cc_encrypt("",0)