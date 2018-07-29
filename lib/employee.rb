class Employee
  attr_reader :name, :age, :salary
  def initialize(employee_info)
    @name = employee_info[:name]
    @age = employee_info[:age]
    @salary = employee_info[:salary].to_i
  end
end
