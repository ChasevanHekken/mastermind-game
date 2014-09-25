gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'message_printer3'
require_relative 'game3'
require_relative 'mastermind3'


class MastermindTest < Minitest::Test
  def test_it_has_a_class_and_starts
    skip
    mastermind = Mastermind.new
    assert
  end

  def test_if_start_method_works
    skip
    mastermind = Mastermind.new
    mastermind.start


  end

  def test_if_play_method_works
    mastermind = Mastermind.new
    @command = "p"
    assert mastermind.play?
    @command = "play"
    assert mastermind.play?

  end
end
