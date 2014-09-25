class GuessChecker
  attr_reader :command, :secret_code

  def initialize(command, secret_code)
    @command = command
    @secret_code = secret_code
  end

  def check_position
    count = 0
    correct_position = 0

    command.each_char do |c|
      if c == secret_code[count]
        correct_position += 1
      end
      count += 1
    end
    correct_position
  end

  def check_color
    temp_secret_code = secret_code.dup
    correct_color = 0

    command.each_char { |c| correct_color += 1 if temp_secret_code.slice!(c) }
    correct_color
  end
end
