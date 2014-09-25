gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'game'
require_relative 'play'
require_relative 'message_printer'
require_relative 'input_checker'


class GameTest < Minitest::Test
  def test_if_game_responds_to_start
    game = Game.new
    assert game.respond_to?(:start)
  end

  def test_if_game_responds_to_process_initial_commands
    game = Game.new
    assert game.respond_to?(:process_initial_commands)
  end
end
