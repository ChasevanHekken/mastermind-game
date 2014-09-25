gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'message_printer3'
require_relative 'game3'
require_relative 'mastermind3'


class GameTest < Minitest::Test
  def test_guess_checker_method
    game = Game.new


  end



end
