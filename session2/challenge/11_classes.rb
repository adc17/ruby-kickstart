# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(number)
    number = 0 if number < 0
    number = 99 if number > 99
    @number = number
  end

  def print_song
    while @number >= 3
      puts "#{@number.wordify.capitalize} bottles of beer on the wall,"
      puts "#{@number.wordify.capitalize} bottles of beer,"
      puts "Take one down, pass it around,"
      @number -= 1
      puts "#{@number.wordify.capitalize} bottles of beer on the wall."
    end
    if @number == 2
      puts "#{@number.wordify.capitalize} bottles of beer on the wall,"
      puts "#{@number.wordify.capitalize} bottles of beer,"
      puts "Take one down, pass it around,"
      @number -= 1
      puts "#{@number.wordify.capitalize} bottle of beer on the wall."
    end
    if @number == 1
      puts "#{@number.wordify.capitalize} bottle of beer on the wall,"
      puts "#{@number.wordify.capitalize} bottle of beer,"
      puts "Take one down, pass it around,"
      @number -= 1
      puts "#{@number.wordify.capitalize} bottles of beer on the wall."
    end
      
  end

end

class Integer
  
  def wordify
    teens_array = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_array = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    digits_array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    if self == 100
      write = "one-hundred"
    elsif self >= 20 && self <= 99
      tens = self/10
      digits = self - (tens * 10)
      write = tens_array[tens]
      write << "-" if tens > 0 && digits > 0
      write << digits_array[digits] if digits > 0
    elsif self >= 10 && self < 20
      teens = self - 10
      write = teens_array[teens]
    elsif self >= 0 && self < 10
      write = digits_array[self]
    end
    return write
  end

end

BeerSong.new(99).print_song
