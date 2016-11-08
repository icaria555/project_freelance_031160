require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  
  def setup
    @province = Province.new( :name => "Samut Sakhon")
    @amphur = @province.amphurs.new( :name => "muangsamutsakhon" )
    @district = @amphur.districts.new( :name => "kokkrabue" ) 
  end

  test "default vaulue should valid" do
    assert @district.valid?
  end
  
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
    @district = @amphur.districts.new()
    assert_not @district.valid?
    @district.name = "kokkrabue"
    assert @district.valid?
  end
  
  # ==========================================================
  # test amount latitude
  # ==========================================================
  
  test "latitude should be exists" do
    @district.latitude = nil
    assert_not @district.valid?
  end
  
  # ==========================================================
  # test amount longtitude
  # ==========================================================
  
  test "longtitude should be exists" do
    @district.longitude = nil
    assert_not @district.valid?
  end
end
