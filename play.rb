require 'Time'
require_relative 'guess_checker'
require_relative 'message_printer'
require_relative 'input_checker'

class Play
  attr_reader :correct_position, :correct_color, :num_guesses, :printer, :secret_code, :command, :input

  def initialize(printer = MessagePrinter.new)
    @start_time = Time.new
    @num_guesses = 0
    @printer = printer
    @command = ""
    generate_random_code
    @input = InputChecker.new
  end

  def play
    printer.take_a_guess
    @command = gets.strip
    until input.exit?(@command) || input.win?(@command, @secret_code)
      process_game_turn
    end
    time_correct_guess
    printer.you_win(@secret_code, @num_guesses, @time_minutes, @time_seconds)
  end

  def process_game_turn
    puts "Secret code is #{@secret_code.upcase}"
    case
    when input.exit?(@command)
    when input.too_short?(@command)
      printer.too_short
      @command = gets.strip
    when input.too_long?(@command)
      printer.too_long
      @command = gets.strip
    when input.incorrect_guess?(@command, @secret_code)
      talk_to_guess_checker
      print_guess_results
    end
  end

  def talk_to_guess_checker
    @num_guesses += 1
    guess_checker = GuessChecker.new(@command, @secret_code)
    @correct_position = guess_checker.check_position
    @correct_color = guess_checker.check_color
  end

  def print_guess_results
    printer.guess_results(@command, @correct_color, @correct_position, @num_guesses)
    @command = gets.strip
  end

  def time_correct_guess
    @end_time = Time.new
    @time_length = ( @end_time - @start_time ).to_i
    @time_minutes = ( @time_length / 60 )
    @time_seconds = ( @time_length % 60 )
  end

  def generate_random_code
    charset = ["r","g","b","y","r","g","b","y","r","g","b","y"]
    @secret_code = charset.sample(4).join("")
  end
end
