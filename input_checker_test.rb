gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'input_checker'

class InputCheckerTest < Minitest::Test
  def test_win_method
    input_checker = InputChecker.new
    assert input_checker.win?("rgby", "rgby")
    refute input_checker.win?("ybgr", "rgby")
  end

  def test_exit_method
    input_checker = InputChecker.new
    refute input_checker.exit?("xyzq")
    #assert input_checker.exit?("q")
    #assert input_checker.exit?("quit")
  end

  def test_too_short_method
    input_checker = InputChecker.new
    assert input_checker.too_short?("r")
    assert input_checker.too_short?("ry")
    assert input_checker.too_short?("rbg")
    refute input_checker.too_short?("rgyby")
    refute input_checker.too_short?("rrygydy")
    refute input_checker.too_short?("rrydydydy")
  end

  def test_too_long_method
    input_checker = InputChecker.new
    refute input_checker.too_long?("r")
    refute input_checker.too_long?("ry")
    refute input_checker.too_long?("rbg")
    assert input_checker.too_long?("rgyby")
    assert input_checker.too_long?("rrygydy")
    assert input_checker.too_long?("rrydydydy")
  end

  def test_play_method
    input_checker = InputChecker.new
    assert input_checker.play?("p")
    assert input_checker.play?("play")
    refute input_checker.play?("wtf am I doing?")
    refute input_checker.play?("I'm not sure")
  end

  def test_incorrect_guess_method
    input_checker = InputChecker.new
    assert input_checker.incorrect_guess?("rgby", "ybgr")
    assert input_checker.incorrect_guess?("ggbb", "gyrb")
    refute input_checker.incorrect_guess?("gybr", "gybr")
    refute input_checker.incorrect_guess?("yrrb", "yrrb")
  end

  def test_instructions_method
    input_checker = InputChecker.new
    assert input_checker.instructions?("i")
    assert input_checker.instructions?("instructions")
    refute input_checker.instructions?("gybr")
    refute input_checker.instructions?("yrgyrbyryrb")
  end

  def test_fininshed_method
    input_checker = InputChecker.new
    assert input_checker.finished?("q")
    assert input_checker.finished?("quit")
    refute input_checker.finished?("gybr")
    refute input_checker.finished?("yrgyrbyryrb")
  end
end
