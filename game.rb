require_relative 'play'
require_relative 'message_printer'
require_relative 'input_checker'

class Game
  attr_reader :command, :printer, :input

  def initialize
    @command = ""
    @secret_code = ""
    @printer = MessagePrinter.new
    @input = InputChecker.new
    start
  end

  def start
    printer.intro
    until input.finished?(@command)
      @command = gets.strip
      process_initial_commands
    end
  end

  def process_initial_commands
    case
    when input.play?(@command)
      play = Play.new(printer, @command, @secret_code)
      play.play
    when input.instructions?(@command)
      printer.instructions
    when input.finished?(@command)
      exit
    else
      printer.not_a_valid_command
    end
  end
end
