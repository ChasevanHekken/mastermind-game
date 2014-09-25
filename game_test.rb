gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'game'
require_relative 'play'
require_relative 'message_printer'
require_relative 'input_checker'


class GameTest < Minitest::Test
  def test_process_game_turn_method
    game = Game.new


  end



end
