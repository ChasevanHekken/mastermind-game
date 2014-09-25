class GuessChecker
  def check_position(command, secret_code)
    @command = command
    @secret_code = secret_code
    @count = 0
    @correct_position = 0

    @command.each_char do |c|
      if c == @secret_code[@count]
        @correct_position += 1
      end
      @count += 1
    end
    @correct_position
  end

  def check_color(command, secret_code)
    @command = command
    @secret_code = secret_code
    @temp_secret_code = @secret_code.dup
    @correct_color = 0

    @command.each_char { |c| @correct_color += 1 if @temp_secret_code.slice!(c) }
    @correct_color
  end
end
