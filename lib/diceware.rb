class Diceware
  def roll
    Random.rand(6)
  end

  def generate_word_index
    Array.new(5) { self.roll }.join("").to_i
  end

  def generate_word_index_list
    Array.new(4) { self.generate_word_index }
  end
end
