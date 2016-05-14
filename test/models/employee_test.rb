require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase

  def setup
    @employee = Employee.new(first_name: "Example", last_name: "Employee", phone: "01234567890", address: "11 Example Street, Edinburgh")
  end

  test "should be valid" do
    assert @employee.valid?
  end

  test "first_name should be present" do
    @employee.first_name = ""
    assert_not @employee.valid?
  end

  test "last_name should be present" do
    @employee.last_name = ""
    assert_not @employee.valid?
  end

  test "phone should be between 7 and 15 characters" do
    @employee.phone = "1" * 6
    assert_not @employee.valid?

    @employee.phone = "1" * 7
    assert @employee.valid?

    @employee.phone = "1" * 15
    assert @employee.valid?

    @employee.phone = "1" * 16
    assert_not @employee.valid?
  end


end
