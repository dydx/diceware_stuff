class Diceware

  def initialize
    @wordlist = WordList.new('/usr/share/dict/words')
  end

  def generate_passphrase
    get_word_list.join(" ").gsub("\n", "")
  end

  private

  def roll
    Random.rand(6)
  end

  def generate_word_index
    Array.new(5) { roll }.join("").to_i
  end

  def generate_word_index_list
    Array.new(4) { generate_word_index }
  end

  def get_word
    @wordlist.get_word_by_index(generate_word_index)
  end

  def get_word_list
    generate_word_index_list.map { |index| @wordlist.get_word_by_index(index) }
  end
end

class WordList
  def initialize(wordlist)
    @wordlist = File.read(wordlist).lines
  end

  def get_word_by_index(index)
    @wordlist[index]
  end
end
