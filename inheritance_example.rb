class Transportation
  attr_reader :speed, :direction
  def initialize(input_options)
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

class Car < Transportation
attr_reader :fuel, :make, :model
  def initialize(input_options)
    super () 
  @fuel = input_options[:fuel]
  @make = input_options[:make]
  @model = input_options[:model]
end 

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  attr_reader :speed, :type, :weight
  def initialize(input_options) 
    super ()
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end 

  def ring_bell
    puts "ring-ring!"
  end
end

car_1 = Car.new(
  fuel: "Diesel",
  make: "Toyota",
  model: "Some sort of truck"
)
bike_1 = Bike.new(
  speed: "single",
  type: "trek",
  weight: "bascially nothing"
)

puts car_1.make
puts car_1.model
puts car_1.speed
