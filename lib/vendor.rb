require 'pry'
class Vendor

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, amount)
    @inventory[item] = amount

  end

  def check_stock(item)
    number_of_items = []
    inventory.each do |item_in_stock, amount|
      if item_in_stock == item
        number_of_items << amount
      else
        number_of_items << 0
      end
    end
    if inventory == {}
      number_of_items << 0
    end
    number_of_items[0]
  end


end
