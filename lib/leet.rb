class String
  def leet
    if self.include?(' ')
      words = self.split()
      letters = []
      words.each do |word|
        split_word = word.split('')
        split_word.each do |letter|
          letters.push(letter)
        end
        letters.push(' ')
      end
      letters.pop
    else
      letters = self.split('')
    end
    new_letters = letters.each_with_index.map do |letter, i|
      if (letter == 'S') & (i != 0)
        if letters[i - 1] == ' '
          letter
        else
          letter  = 'Z'
        end
      elsif (letter == 's') & (i != 0)
        if letters[i - 1] == ' '
          letter
        else
          letter  = 'z'
        end
      elsif letter == 'I'
        letter = 1
      elsif (letter == 'E') | (letter == 'e')
        letter = 3
      elsif (letter == 'O') | (letter == 'o')
        letter = 0
      else
        letter
      end
    end
    new_letters.join
  end
end