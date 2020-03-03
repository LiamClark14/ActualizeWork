require "./Sellable.rb"


class Item
  attr_reader  :price, :color, :weight
  attr_writer  :price

  include Sellable
end