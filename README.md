# Basic Ruby Projects
This contains my submission for the Basic Ruby Projects in the Odin Project: Ruby Course

## 1. Caesar Cipher Project
### Assignment:
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
```
> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```
#### Quick Tips:
- You will need to remember how to convert a string into a number.
- Don’t forget to wrap from z to a.
- Don’t forget to keep the same case.

## 2. Substring Project
### Assignment:
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

Explanation:
```
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
```
Next, make sure your method can handle multiple words:
```
> substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```
## 3. Stock Picker Project
### Assignment:
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
```
> stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
```
#### Quick Tips:
- You need to buy before you can sell
- Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

## 4. Bubblesort Project
### Assignment:
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
```
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```