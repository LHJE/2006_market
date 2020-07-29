require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require './lib/item'

class VendorTest < Minitest::Test

  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_it_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end

  def test_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    vendor.stock(item1, 30)

    assert_equal ({item1 => 30}), vendor.inventory
  end

  def test_check_stock

  end

end
