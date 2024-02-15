def bubblesort(array)
    n = array.length
    
    loop do
        # Check to see if values have been swapped to break out of the loop
        swapped = false

        # Iterate through the values to compare them to each other
        (n-1).times do |i|

            # Swap the values from smallest to largest
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end

        # Break out of loop once loop condition is met
        break unless swapped
    end

    # Return the array
    array
end

puts "#{bubblesort([4,3,78,2,0,2])}"