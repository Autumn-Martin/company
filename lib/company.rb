class Company
  attr_reader :name, :departments
  def initialize(name)
    @name = name
    # @payroll = payroll
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def get_employees
    # require "pry"; binding.pry
    departments.map do |department|
      department.employees
    end.flatten
  end

  def payroll
    employees = get_employees
    employees.inject(0) do |sum, employee|
      sum + employee.salary
    end
  end


end
