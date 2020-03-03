require "./Sellable.rb"
require "./Item.rb"

class Food < Item
  include Sellable
  attr_accessor :shelf_life

  def initialize(options_hash)
    super(options_hash)
    @shelf_life = options_hash[:shelf_life]
  end
end
