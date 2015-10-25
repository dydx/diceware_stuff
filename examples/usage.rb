require_relative '../lib/diceware.rb'

wordlist = WordList.new('/usr/share/dict/words')
diceware = Diceware.new(wordlist)
puts diceware.generate_passphrase
