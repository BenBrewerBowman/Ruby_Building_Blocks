# Ruby_Building_Blocks
Ruby practice problems from The Odin Project

## Project 1: Caesar Cipher

From Wikipedia:

In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

There's a brief video about it from Harvard's CS50 class.

#### Your Task
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

    > caesar_cipher("What a string!", 5)
    => "Bmfy f xywnsl!"
    
#### Quick Tips:

1. You will need to remember how to convert a string into a number.
2. Don't forget to wrap from z to a.
3. Don't forget to keep the same case.

## Project 2: Stock Picker

#### Your Task
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12
    
#### Quick Tips:

1. You need to buy before you can sell
2. Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

## Project 3: Substrings

#### Your Task
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    > substrings("below", dictionary)
    => {"below"=>1, "low"=>1}
    
Next, make sure your method can handle multiple words:

    > substrings("Howdy partner, sit down! How's it going?", dictionary)
    => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
    
#### Quick Tips:
Recall how to turn strings into arrays and arrays into strings.
