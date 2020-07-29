require 'minitest/autorun'
require 'minitest/pride'
require './lib/market'
require './lib/vendor'
require './lib/item'

class MarketTest < Minitest::Test

  def test_it_exists
    market = Market.new("South Pearl Street Farmers Market")

    assert_instance_of Market, market
  end








end
