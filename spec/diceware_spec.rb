require_relative '../lib/diceware.rb'

describe Diceware do

  context "#new" do
    it "can be instantiated" do
      expect(Diceware).to receive(:new)
      Diceware.new
    end
  end

  context "#roll" do
    it "can roll the dice once" do
      diceware = Diceware.new
      roll = diceware.roll
      expect(roll).to be_an(Integer)
      expect(roll).to be <= 6
    end
  end

  context "#generate_word_index" do
    it "will roll five times and return a five-digit number" do
      diceware = Diceware.new
      word_index = diceware.generate_word_index
      expect(word_index.to_s.size).to eql 5
    end
  end

  context "#generate_word_index_list" do
    it "will output an array of five word indices" do
      diceware = Diceware.new
      word_index_arr = diceware.generate_word_index_list
      expect(word_index_arr.size).to eql 4
    end
  end

end
