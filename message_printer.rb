class MessagePrinter
  def intro
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts ">"
  end

  def instructions
    puts "Mastermind is a code breaking game. I have randomly generated a "
    puts "sequence of four ordered colors. Your job is to guess the sequence "
    puts "of ordered colors. I will respond indicating the correct number of "
    puts "positions and the correct number of colors."
    puts " "
    puts "Would you like to start the game now? Enter (p) to play or (q) to quit"
  end

  def take_a_guess
    puts "I have generated a beginner sequence with four elements made "
    puts "up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any "
    puts "time to end the game."
    puts "What's your guess?"
    puts ">"
  end

  def too_short
    puts "Your response is too short, please enter again."
  end

  def too_long
    puts "Your response is too long, please enter again."
  end

  def you_win(code, num_guesses, time_minutes, time_seconds)
    puts "Congratulations! You guessed the sequence #{code} in #{num_guesses} guesses over #{time_minutes} minutes and #{time_seconds} seconds."
    puts "Do you want to (p)lay again or (q)uit?"
  end

  def guess_results(code, color, position, num_guess)
    puts "#{code.upcase} has #{color} of the correct colors with #{position} in the correct positions."
    puts "You've taken #{num_guess} guesses"
    puts "Please guess again."
    puts "--------------------------------------------------------------------"
  end

  def not_a_valid_command
    puts "That is not a valid command."
    puts "Please enter again."
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
end
