
lives = 9
words = ['programming', 'fun', 'internship', 'ruby', 'rails', 'coding', 'design']

word_to_guess = words.sample
hidden_word = word_to_guess.chars.map{'_'}

while lives > 0
  puts "Guess this word: #{hidden_word.join(" ")}"
  user_guess = gets.chomp
  if word_to_guess.include? user_guess
      # replace that letter in the array with the letter guessed and repeat loop
    hidden_word=hidden_word.filter_map.with_index{|letter, index| user_guess == word_to_guess[index] ? user_guess : letter}
  end
  if hidden_word.join("")==word_to_guess
    puts 'Yay, you guessed the word!'
    break
  end
  lives -= 1
  puts "You have #{lives} chances left to guess"
end

puts "The word to guess was: #{word_to_guess}"