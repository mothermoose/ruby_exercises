module Reporting
 def send report
   puts "Sending email..."
   # the code to send report
   puts "Email Sent."
 end 
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options) 
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
include Reporting
  def initialize(input_options) 
    super(input_options)
    @employees = input_options[:employees]
  end

 def send_report
   puts "Sending email..."
   # the code to send report
   puts "Email Sent."
 end 

 def annual_raise
  @salary *= 1.05
  end 
end

employee_1 = Employee.new(
                          first_name: "Jim",
                          last_name: "Jefferies", 
                          salary: 70000, 
                          active: true
                         )
manager = Manager.new(
                      first_name: "Patton",
                      last_name: "Oswalt",
                      salary: 100000,
                      active: true
                      )

class Intern < Employee
 include Reporting 
  def send_report
    puts "Sending email..."
    #soemthing here
    puts "Email sent!"
  end 
end 

intern = Intern.new(
  first_name: "Jimmy",
  last_name: "Olsen",
  salary: 150000,
  active: true
)

 puts manager.last_name
