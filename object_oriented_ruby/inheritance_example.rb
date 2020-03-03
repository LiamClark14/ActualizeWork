class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  initialize(input_options)
    super()
    @type = input_options[:type]
    @year = input_options[:year]
    @weight = input_options[:weight]
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new()
car = Car.new()

bike.ring_bell
car.honk_horn