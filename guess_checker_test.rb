gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'guess_checker'

class GuessCheckerTest < Minitest::Test
  def test_check_position_method
    guess = GuessChecker.new("rgby", "rgby")
    assert_equal 4, guess.check_position
    guess = GuessChecker.new("ggby", "rgby")
    assert_equal 3, guess.check_position
    guess = GuessChecker.new("yyby", "rgby")
    assert_equal 2, guess.check_position
    guess = GuessChecker.new("gryr", "rgyb")
    assert_equal 1, guess.check_position
    guess = GuessChecker.new("rrrr", "ygby")
    assert_equal 0, guess.check_position
    guess = GuessChecker.new("yyyy", "yyyy")
    assert_equal 4, guess.check_position
    guess = GuessChecker.new("grrb", "gyyr")
    assert_equal 1, guess.check_position
    guess = GuessChecker.new("yyrr", "yrry")
    assert_equal 2, guess.check_position
    guess = GuessChecker.new("bygg", "rbyy")
    assert_equal 0, guess.check_position
    guess = GuessChecker.new("rbbr", "ryyr")
    assert_equal 2, guess.check_position
    guess = GuessChecker.new("rbbr", "ybbr")
    assert_equal 3, guess.check_position
    guess = GuessChecker.new("gbgb", "gbgb")
    assert_equal 4, guess.check_position
  end

  def test_check_color_method
    guess = GuessChecker.new("rgby", "rgby")
    assert_equal 4, guess.check_color
    guess = GuessChecker.new("ggby", "rgby")
    assert_equal 3, guess.check_color
    guess = GuessChecker.new("yyby", "rgby")
    assert_equal 2, guess.check_color
    guess = GuessChecker.new("gryr", "rgyb")
    assert_equal 3, guess.check_color
    guess = GuessChecker.new("rrrr", "ygby")
    assert_equal 0, guess.check_color
    guess = GuessChecker.new("yyyy", "yyyy")
    assert_equal 4, guess.check_color
    guess = GuessChecker.new("rgby", "ybgr")
    assert_equal 4, guess.check_color
    guess = GuessChecker.new("rrrr", "yyyy")
    assert_equal 0, guess.check_color
    guess = GuessChecker.new("ybgg", "gbrr")
    assert_equal 2, guess.check_color
    guess = GuessChecker.new("bgry", "yrbb")
    assert_equal 3, guess.check_color
    guess = GuessChecker.new("yrry", "ygyb")
    assert_equal 2, guess.check_color
    guess = GuessChecker.new("brbr", "gygy")
    assert_equal 0, guess.check_color
    guess = GuessChecker.new("brry", "gggb")
    assert_equal 1, guess.check_color
  end

end
