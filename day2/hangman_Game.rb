# Hangman Game : This game is basically fro guessing the word, in which a player tries to guess the hidden word by suggesting the different alphabetical
# words. Game have the limit on the number of guesses allowed.

words = ["josh", "ruby", "game", "code", "logic", "debug", "array", "guess"]
word = words.sample 
hidden_word = "_" * word.length
guesses = []
maximum_attempts = 10
attempts = 0

puts "Welcome to Hangman Game"
puts "Guess the word: #{hidden_word}"

while hidden_word.include?("_") && attempts < maximum_attempts
  print "Enter a letter: "
  guess = gets.chomp.downcase

  if guesses.include?(guess)
    puts "You already guessed that!"
    attempts += 1
    puts "Attempts left: #{maximum_attempts - attempts}"
    next
  end

  guesses << guess # this operator add the element in the guesses array from guess

  if word.include?(guess)
    word.chars.each_with_index do |char, index|  # first, this will convert the string into array of char and then acces the char with it index
      if char == guess
        hidden_word[index] = guess
      end
    end
    puts "Good guess!"
  else
    attempts += 1
    puts "Wrong guess! Attempts left: #{maximum_attempts - attempts}"
  end

  puts "Word: #{hidden_word}"
end

if hidden_word == word
  puts "Congratulations! You guessed the word!"
else
  puts "Out of attempts! The word was: #{word}"
end
