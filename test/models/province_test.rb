require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase
  # ==========================================================
  # test amount name
  # ==========================================================
  
  test "name should be exists" do
    @nontaburi = Province.new( :name => "nontaburi")
    @nontaburi.name = nil
    assert_not @nontaburi.valid?
  end
  
end
