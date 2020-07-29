require 'pry'
class Vendor

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, amount)
    if inventory.include?(item) == true
      @inventory.each do |item_in_stock, how_many|
        @inventory[item] = amount + how_many
      end
    else
      @inventory[item] = amount
    end
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

  def potential_revenue
    money = 0
    inventory.each do |item_in_stock|
      price = item_in_stock[0].price[1..-1]
      money += (price.to_f * item_in_stock[1].to_f).round(2)
    end
    # binding.pry

    money
  end









end
