def substrings(string, dictionary)
    # Change the case so it's consistent
    string = string.downcase
    # Initialise a new Hash
    substring_hash = Hash.new(0)

    #Split the string into an array
    string_separate = string.split(" ")

    # Iterate through the dictionary
    dictionary.each do |word|
        # Change the case so it's consistent
        word = word.downcase

        # Iterate through the input string
        string_separate.each do |string_word|

            # Check to see if the string includes any words from the dictionary
            if string_word.include?(word)
                # Add the new key and increment the value of the key
                substring_hash[word] += 1
            end
        end
    end

    return substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("I feel like going down below! My partner thinks going down is a bad idea.", dictionary)