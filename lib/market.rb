
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

  def total_inventory
    total_inventory = {}
    items_in_stock = []
    vendors.each do |vendor|
      vendor.inventory.each do |item_in_stock|
        items_in_stock << item_in_stock[0]
      end
    end
    unique_items_in_stock = items_in_stock.uniq
    
    # vendors.each do |vendor|
    #   vendor.inventory.each do |item_in_stock|
    #     if total_inventory.include?(item_in_stock) == true
    #       total_inventory.each do |item_in_here, how_many|
    #         @total_inventory[item_in_here] = [vendor, how_many]
    #       end
    #     elsif unique_items_in_stock.any?(item_in_stock[0])
    #       total_inventory[item_in_stock[0]] = vendor
    #     end
    #   end
    # end
    binding.pry

    total_inventory
  end








end
