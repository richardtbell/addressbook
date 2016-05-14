require 'test_helper'

class OrganisationTest < ActiveSupport::TestCase

  def setup
    @organisation = Organisation.new(name: "Example", phone: "01234567890", address: "11 Example Street, Edinburgh")
  end

  test "should be valid" do
    assert @organisation.valid?
  end

  test "name should be present" do
    @organisation.name = ""
    assert_not @organisation.valid?
  end

  test "phone should be present" do
    @organisation.phone = ""
    assert_not @organisation.valid?
  end

  test "address should be present" do
    @organisation.address = ""
    assert_not @organisation.valid?
  end

  test "phone should be between 7 and 15 characters" do
    @organisation.phone = "1" * 6
    assert_not @organisation.valid?

    @organisation.phone = "1" * 7
    assert @organisation.valid?

    @organisation.phone = "1" * 15
    assert @organisation.valid?

    @organisation.phone = "1" * 16
    assert_not @organisation.valid?
  end

end
