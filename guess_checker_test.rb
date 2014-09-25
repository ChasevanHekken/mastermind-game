gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'guess_checker'

class GuessCheckerTest < Minitest::Test
  def test_check_position_method
    guess = GuessChecker.new
    assert_equal 4, guess.check_position("rgby", "rgby")
    assert_equal 3, guess.check_position("ggby", "rgby")
    assert_equal 2, guess.check_position("yyby", "rgby")
    assert_equal 1, guess.check_position("gryr", "rgyb")
    assert_equal 0, guess.check_position("rrrr", "ygby")
    assert_equal 4, guess.check_position("yyyy", "yyyy")
  end

  def test_check_color_method
    guess = GuessChecker.new
    assert_equal 4, guess.check_color("rgby", "rgby")
    assert_equal 3, guess.check_color("ggby", "rgby")
    assert_equal 2, guess.check_color("yyby", "rgby")
    assert_equal 3, guess.check_color("gryr", "rgyb")
    assert_equal 0, guess.check_color("rrrr", "ygby")
    assert_equal 4, guess.check_color("yyyy", "yyyy")
    assert_equal 4, guess.check_color("rgby", "ybgr")
    assert_equal 4, guess.check_color("yrry", "ryyr")
  end

end
