require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test
  def setup
    @employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    # => <#Employee:32847432>
    @employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
    # => <#Employee:65745667>
    @department = Department.new("Accounting")
  end
  def test_it_exists
    assert_instance_of Department, @department
  end

  def test_it_has_attributes
    assert_equal "Accounting", @department.name
  end

  def test_it_has_default_zero_employees
    assert_equal 0, @department.employee_count
  end

  def test_employees_can_be_added
    assert_equal 0, @department.employee_count

    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)

    assert_equal 2, @department.employee_count
    assert_equal ([@employee_1, @employee_2]), @department.employees
  end

  def test_it_can_find_the_average_salary
    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)

    assert_equal 75000, @department.average_salary
  end

  
end
