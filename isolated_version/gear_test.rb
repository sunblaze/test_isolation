# Example from POODR by Sandi Metz
require 'minitest/autorun'
require 'mocha/minitest'
require './gear'

class GearTest < Minitest::Test
  def test_calculates_gear_inches
    # mocking to isolate Wheel from Gear. I like mocha mocks
    Wheel.expects(:new).returns(stub(diameter: 10))

    gear = Gear.new(chainring: 52, cog: 11, rim: 26, tire: 1.5)
    assert_in_delta(47.27, gear.gear_inches, 0.01)
  end
end
