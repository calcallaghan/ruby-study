def englishNumber number
  # we only want numbers from 0-100
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or lesser.'
  end

  numString = '' # this is the string we will return

  # "left" is how much of the number we still have to write out.
  #  "write" is the part we are writing out now.

  left = number
  write = left/100  # how many hundreds left to write out?
  left = left - write*100  #subtract off those hundreds

  if write > 0
    return 'one hundred'
  end

  write = left/10  # how many tens left to write out?
  left = left - write*10  #subtract off those tens

  if write > 0
    if write == 1   #uh oh. since we cant write tenty-two instead of twelve, we make an exception
      if left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end

      # since we took care of the digits in the ones place already, we have nothing left to write
      
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9 
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

    write = left  # how many ones left to write out?
    left = 0      # subtract off those ones.

    if write > 0
      if write == 1
        numString = numString + 'one'
      elsif write == 2
        numString = numString + 'two'
      elsif write == 3
        numString = numString + 'three'
      elsif write == 4
        numString = numString + 'four'
      elsif write == 5
        numString = numString + 'five'
      elsif write == 6
        numString = numString + 'six'
      elsif write == 7
        numString = numString + 'seven'
      elsif write == 8
        numString = numString + 'eight'
      elsif write == 9
        numString = numString + 'nine'
      end
    end

    if numString == ''
      return 'zero'
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
