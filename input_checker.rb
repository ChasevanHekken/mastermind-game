class InputChecker
  def win?(command, secret_code)
    command == secret_code
  end

  def exit?(command)
    command.downcase == "q" || command.downcase == "quit"
    if command.downcase == "q" || command.downcase == "quit"
      exit
    end
  end

  def too_short?(command)
    command.length < 4 && ( command.downcase != "q" || command.downcase != "quit" )
  end

  def too_long?(command)
    command.length > 4
  end

  def play?(command)
    command.downcase == "p" || command.downcase == "play"
  end

  def incorrect_guess?(command, secret_code)
    command.length == 4 && command != secret_code
  end

  def instructions?(command)
    command.downcase == "i" || command.downcase == "instructions"
  end

  def finished?(command)
    command.downcase == "q" || command.downcase == "quit"
  end
end
