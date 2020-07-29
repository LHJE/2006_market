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

  # def check_stock(item)
  #   binding.pry
  # end


end
