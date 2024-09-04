def englishNumber number
  if number < 0  # no negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # no more special cases! no more returns!
 numString = ''  # this is the string we will return.
 onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
 tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
 teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

 # "left" is how much of the number we still have to write out.
 # "write" is the part we are writing out now.
 # "write" and "left"... get it?

 left = number
 write = left/100  # how many hundreds left to write out?
 left = left - write*100  # subtract off those hundreds.

 if write > 0
  hundreds = englishNumber write
  numString = numString + hundreds + ' hundred'
  # That's called "recursion". So what did I just do? I told this method to call itself, but with "write" instead of "number". Remember that "write" is (at the moment) the number of hundreds we have to write out. After we add "hundreds" to "numString", we add the string ' hundred' after it. So, for example, if we originally called englishNumber with 1999 (so "number" = 1999), then at this point "write" would be 19, and "left" would be 99. The laziest thing to do at this point is to have englishNumber write out the 'nineteen' for us, then we write out ' hundred', and then the rest of englishNumber writes out 'ninety-nine'.

 if left > 0
  # so we don't write 'two hundredfifty-one'....
  numString = numString + ''
 end
end

 write = left/10  # how many tens left to write out?
 left = left - write*10  # subtract off those tens.

 if write > 0
   if ((write ==1) and (left > 0))
    # since we can't write "tenty-two" instead of "twelve" we have to make a special exception for these.
    numString = numString + teenagers[left-1]
    # the "-1" is because teenagers[3] is 'fourteen', not 'thirteen'
    # since we took care of the digit in the ones place already, we have nothing left to write.
    left = 0
   else
    numString = numString + tensPlace[write-1]
  end

  if left > 0
    numString = numString + '-'
  end
end

 write = left  # how many ones left to write out?
 left = 0  # subtract off those ones.

 if write > 0
  numString = numString + onesPlace[write-1]
 end

 numString
end


puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
