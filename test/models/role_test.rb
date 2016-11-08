require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  def setup
    @role = Role.new( :name => "bob", :level => 3 )
  end

  # ==========================================================
  # test amount name
  # ==========================================================
  
  test "name should be exists" do
    @role.name = nil
    assert_not @role.valid?
  end
  
  # ==========================================================
  # test amount level
  # ==========================================================
  
  test "level should more than 0" do
    @role.level = "text"
    assert_not @role.valid?
    @role.level = -5
    assert_not @role.valid?
    @role.level = 0.5
    assert_not @role.valid?
  end
  
  test "level should be exists" do
    @role.level = nil
    assert_not @role.valid?
  end
  
  test "level should be integer" do
    @role.level = "text"
    assert_not @role.valid?
  end
end
