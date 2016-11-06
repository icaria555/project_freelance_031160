require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  # ==========================================================
  # test association
  # ==========================================================
  
  test "district should not exist without amphur and province" do
    @district = District.new( :name => "kokkrabue")
    assert_not @district.valid?
  end
  
  # ==========================================================
  # test amount name
  # ==========================================================
  
  test "name should be exists" do
    @province = Province.new( :name => "Samut Sakhon")
    @amphur = @province.amphurs.new( :name => "muangsamutsakhon" )
    @district = @amphur.districts.new()
    assert_not @district.valid?
    @district.name = "kokkrabue"
    assert @district.valid?
  end
end
