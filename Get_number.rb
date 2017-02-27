system 'cls'
#Приветствие!
puts
puts
puts
puts

puts "\t\t\t\tWelcome to 'Get My Number!'"
puts
print "\t\t\t\tWhat's your name? "
input = gets.chomp
puts "Welcome, #{input}!!"

# Сохранение случайного числа.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

num_guesses = 0

# Признак продолжения игры.
guessed_it = false
until num_guesses == 10 || guessed_it

  puts "You have got #{ 10 - num_guesses} quesses left"

  print "Make a guess: "
  guess = gets.to_i
  num_guesses += 1
# Сравнение введенного числа с загаданным
# и вывод соответствующего сообщения.
      if guess < target
        puts "Oops. Your guess was LOW."
      elsif guess > target
        puts "Oops. Your guess was HIGH."
      elsif guess == target
        puts "Good job, #{input}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
      end

end
# Если попыток не осталось, сообщить загаданное число.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end

#puts 42.methods
