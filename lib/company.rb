class Company
  attr_reader :name, :departments
  def initialize(name)
    @name = name
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def get_employees
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


  def average_age
    employees = get_employees
    employee_number = employees.count
    total_ages = employees.inject(0) do |sum, employee|
      sum + employee.age
    end
    total_ages / employee_number.to_f
  end
end
