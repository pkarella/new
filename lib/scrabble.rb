class Scrabble

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    letters = word.upcase.split('')

    total = 0
    letters.each do |letter|
      total += letter_scores[letter]
    end

    total
  end

# scores for each letter
  def letter_scores
    {  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end




class Num_word
  @@words_array = %w{one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty thirty fourty fifty sixty seventy eighty ninety}
  @@num_array = [*1..20, 30, 40, 50, 60, 70, 80, 90]

  def initialize(number)
    @number = number
  end

  def change_num
    new_string = []
    @@num_array.reverse.each_with_index do |num, i|
      if @number - num >= 0
        new_string.push(@@words_array.reverse[i])
        @number = @number - num
      end
    end
    new_string.join(" ")
  end
end
