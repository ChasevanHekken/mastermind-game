gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'play'
require_relative 'guess_checker'
require_relative 'message_printer'
require_relative 'input_checker'

class PlayTest < Minitest::Test
  def test_talk_to_guess_checker_method_specifically_correct_position
    skip
    play = Play.new("rbby", "ybbg")
    play.talk_to_guess_checker
    assert_equal 2, play.correct_position
    play = Play.new("rgby", "rgby")
    play.talk_to_guess_checker
    assert_equal 4, play.correct_position
  end

  def test_talk_to_guess_checker_method_if_num_guesses_increments
    play = Play.new("rbby", "ybbg")
    play.talk_to_guess_checker
    assert_equal 1, play.num_guesses
    play.talk_to_guess_checker
    assert_equal 2, play.num_guesses
    play.talk_to_guess_checker
    assert_equal 3, play.num_guesses
  end

  def test_if_play_method_is_able_to_respond
    play = Play.new("qrby", "qrby")
    assert play.respond_to?(:play)
  end

  def test_if_time_correct_guess_method_is_able_to_respond
    play = Play.new("qrby", "qrby")
    assert play.respond_to?(:time_correct_guess)
  end

  def test_if_generate_random_code_method_is_able_to_respond
    play = Play.new("qrby", "qrby")
    assert play.respond_to?(:generate_random_code)
  end
end
