employee_1 = {:first_name => "Jim", :last_name => "jefferies" , :salary => 70000, :active => true} 

employee_2 = {first_name: "maria", last_name: "bamford" , salary: 80000, active: true}


puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options) 
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_opitions[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Jim",
                          last_name: "Jefferies", 
                          salary: 70000, 
                          active: true
                         )
employee_2 = Employee.new("Maria", "Bamford", 80000, true)

puts employee_1.active
employee_1.active = false
puts employee_1.active

