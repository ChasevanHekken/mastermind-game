gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'play'
require_relative 'guess_checker'
require_relative 'message_printer'
require_relative 'input_checker'

class PlayTest < Minitest::Test
  def test_guess_checker_method
    skip
    play = Play.new
    @command = "qrbyere"
    assert  play.process_game_turn

  end

  def test_guess_checker_when_guess_matches
    skip
    play = Play.new
    @command = "qrby"
    @secret_code = "qrby"
    play.talk_to_guess_checker
    assert_equal 4, @correct_color
    assert_equal 4, @correct_position
  end


end
