
require 'pry'
class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
    @total_inventory = {}
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

  # def total_inventory
  #   items_in_stock = []
  #   vendors.each do |vendor|
  #     vendor.inventory.each do |item_in_stock|
  #       items_in_stock << item_in_stock[0]
  #     end
  #   end
  #   unique_items_in_stock = items_in_stock.uniq
  #
  #   # vendors.each do |vendor|
  #   #   vendor.inventory.each do |item_in_stock|
  #   #     if total_inventory.include?(item_in_stock) == true
  #   #       total_inventory.each do |item_in_here, how_many|
  #   #         @total_inventory[item_in_here] = [vendor, how_many]
  #   #       end
  #   #     elsif unique_items_in_stock.any?(item_in_stock[0])
  #   #       total_inventory[item_in_stock[0]] = vendor
  #   #     end
  #   #   end
  #   # end
  #
  #   total_inventory
  # end


#An item is overstocked if it is sold by more than 1 vendor AND the total quantity is greater than 50.
  def overstocked_items
    overstocked_items = []
    total_inventory.each do |item_in_stock, item_info|
      if item_info[quantity] > 50 && item_info[vendors].count > 1
        overstocked_items << item_in_stock
      end
    end
    overstocked_items
  end

  def sorted_item_list
    item_list = []
    vendors.each do |vendor|
      vendor.inventory.each do |item_in_stock|
        item_list << item_in_stock[0].name
      end
    end
    item_list.uniq.sort
  end






end
