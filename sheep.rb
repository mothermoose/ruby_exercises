class Sheep
  @@count = 0

  def initialize(input_options)
    @name = input_options[:name]
    @@count += 1
  end 
 
  def self.count
    puts @@count
  end 
  
  def name
    puts @name
  end 
  def bleet
    puts "bahhhh"
  end 

  def self.grass
    puts "yum" 
  end 
end 

sheep.count 

bob = Sheep.new(name: "bob")

sheep.count

bob.bleet
Sheep.grass 

bob.name
