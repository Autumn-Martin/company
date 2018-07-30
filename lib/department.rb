class Department
  attr_reader :name, :employee_count, :employees
  def initialize(name)
    @name = name
    @employee_count = 0
    @employees = []
  end

  def add_employee(employee)
    @employee_count = employee_count + 1
    @employees << employee
  end

  def total_salary
    total_salary = @employees.inject(0) do |addition, employee|
      addition + employee.salary
    end
  end

  def average_salary
    total_salary = @employees.inject(0) do |addition, employee|
      addition + employee.salary
    end
    total_salary / employee_count
  end


end
