require 'test_helper'

class ZipcodeTest < ActiveSupport::TestCase
  # ==========================================================
  # test amount code
  # ==========================================================
  
  test "zipcode should be exists" do
    @samutsakhonzipcode = Zipcode.new( )
    assert_not @samutsakhonzipcode.valid?
  end
  
  # ==========================================================
  # test association
  # ==========================================================
  
  test "zipcode tets" do
    @province = Province.new( :name => "Samut Sakhon")
    @amphur = @province.amphurs.new( :name => "muangsamutsakhon" )
    @district = @amphur.districts.new( :name => "kokkrabue" ) 
    @samutsakhonzipcode = @district.zipcodes.new( :code => "11" )
    assert @samutsakhonzipcode.valid?
  end
end
