class String
  def leet
    letters = self.split('')
    letters.map! do |letter|
      if (letter == 'E') | (letter == 'e')
        letter = 3
      end
    end
    letters.join
  end
end