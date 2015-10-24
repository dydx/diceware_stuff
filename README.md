# Diceware Stuff (in Ruby!)

This is a fairly simple and possibly naive implementation of the Diceware method of generating passphrase. It uses the standard `/usr/share/dict/words` wordlist, though it is configurable to some extent.

## Usage
1. install the package
2. `diceware = Diceware.new`
3. `passphrase = diceware.generate_passphrase`

## Caveats
* I'm not sure if this is actually  the most secure thing in the world, I might need to go back and use a different `random` function, perhaps `srand`?
* Don't really use this
