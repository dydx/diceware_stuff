require_relative '../lib/diceware.rb'

describe Diceware do

  before(:all) do
    @diceware = Diceware.new(WordList.new('/usr/share/dict/words'))
  end

  context "#new" do
    it "can be instantiated" do
      expect(Diceware).to receive(:new)
      Diceware.new
    end
  end

  context "#roll" do
    it "can roll the dice once" do
      roll = @diceware.send(:roll)
      expect(roll).to be_an Integer
      expect(roll).to be <= 6
    end
  end

  context "#generate_word_index" do
    it "will roll five times and return a five-digit number" do
      word_index = @diceware.send(:generate_word_index)
      expect(word_index.to_s.size).to eql 5
    end
  end

  context "#generate_word_index_list" do
    it "will output an array of five word indices" do
      word_index_arr = @diceware.send(:generate_word_index_list)
      expect(word_index_arr.size).to eql 4
    end
  end

  context "#get_word" do
    it "will get a word from the wordlist by index" do
      word = @diceware.send(:get_word)
      expect(word).to be_a String
    end
  end

  context "#get_word_list" do
    it "will get four words from the wordlist by indices" do
      wordlist = @diceware.send(:get_word_list)
      expect(wordlist.size).to eql 4
      expect(wordlist[0]).to be_a String
    end
  end

  context "#generate_passphrase" do
    it "will generate a passhrase using the Diceware method" do
      passphrase = @diceware.generate_passphrase
      expect(passphrase).to be_a String
    end
  end

end
