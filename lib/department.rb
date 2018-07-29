class Department
  attr_reader :name, :employee_count, :employees
  def initialize(name)
    @name = name
    @employee_count = 0
    @employees = []
  end

  def add_employee(employee)
    @employee_count = @employee_count + 1
    # require "pry"; binding.pry
    @employees << employee
  end

  def average_salary
    # require "pry"; binding.pry
    total_salary = @employees.inject(0) do |addition, employee|
      addition + employee.salary
      # require "pry"; binding.pry
    end
    total_salary / @employee_count
  end

end
