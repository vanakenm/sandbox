class Employee
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def old?
    a = 35


    age > 35
  end
end
#

bob = Employee.new('Bob',32)
peter = Employee.new('Peter',55)
anna = Employee.new('Anna',23)
steve = Employee.new('Steve',77)

employees = [bob, peter, anna, steve]

#1
p employees.select{ |e| e.old? }.map{ |e| e.name }
#2
p employees.select(&:old?).map{ |e| e.name }
#3
p employees.select(&:old?).map(&:name)