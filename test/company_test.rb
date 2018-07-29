require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'
require './lib/company'


class CompanyTest < Minitest::Test
  def setup
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
    employee_3 = Employee.new({name: "Stephanie Jones", age: 30, salary: "150000"})
    employee_4 = Employee.new({name: "Janssen Tanaka", age: 50, salary: "200,000"})
    @department_1 = Department.new("Accounting")
    @department_2 = Department.new("Security")
    @company = Company.new("Ares Macrotechnology")
    @department_1.add_employee(employee_1)
    # => 1
    @department_1.add_employee(employee_2)
    # => 2
    @department_2.add_employee(employee_3)
    # => 1
    @department_2.add_employee(employee_4)
  end

  def test_it_exists
    assert_instance_of Company, @company
  end

  def test_it_has_a_name
    assert_equal "Ares Macrotechnology", @company.name
  end

  def test_it_has_payroll
    assert_equal 500000, @company.payroll
  end
end


# # => 2
# company.add_department(department_1)
# # => <#Department:3457689435>
# company.add_department(department_2)
# # => <#Department:8457875458>
# company.payroll
# # => 500000
# company.average_age
# # => 32.5
