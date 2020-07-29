
require 'pry'
class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    names = []
    vendors.each do |vendor|
      names << vendor.name
    end
    names
  end

  def vendors_that_sell(item)
    names = []
    vendors.each do |vendor|
      vendor.inventory.each do |item_in_stock|
        if item_in_stock[0] == item
          names << vendor
        end
      end
    end
    names
  end

end
