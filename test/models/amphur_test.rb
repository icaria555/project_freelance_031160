require 'test_helper'

class AmphurTest < ActiveSupport::TestCase
  
  # ==========================================================
  # test association
  # ==========================================================
  
  test "amphur should not exist without province" do
    @amphur = Amphur.new( :name => "muangsamutsakhon")
    assert_not @amphur.valid?
  end
  
  # ==========================================================
  # test amount name
  # ==========================================================
  
  test "name should be exists" do
    @province = Province.new( :name => "Samut Sakhon")
    @amphur = @province.amphurs.new()
    assert_not @amphur.valid?
    @amphur.name = "muangsamutsakhon"
    assert @amphur.valid?
  end
end
