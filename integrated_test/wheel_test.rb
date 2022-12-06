# Example from POODR by Sandi Metz
require 'minitest/autorun'
require './wheel'

class WheelTest < Minitest::Test
  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29, wheel.diameter, 0.01)
  end
end
