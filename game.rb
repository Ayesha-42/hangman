lives = 9
words = %w[programming fun internship ruby rails coding design]

word_to_guess = words.sample
hidden_word = word_to_guess.chars.map { '_' }

while lives.positive?
  puts "Guess this word: #{hidden_word.join(' ')}"
  user_guess = gets.chomp
  if word_to_guess.include? user_guess
    hidden_word = hidden_word.filter_map.with_index do |letter, index|
      user_guess == word_to_guess[index] ? user_guess : letter
    end
  else
    lives -= 1
  end
  if hidden_word.join('') == word_to_guess
    puts 'Yay, you guessed the word!'
    break
  end
  puts "You have #{lives} chances left to guess"
end
puts "The word to guess was: #{word_to_guess}"
