require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new( :id_name => "bob")
    @user.save!
    @order = @user.order.create!(
      :purchaser_id => "name1",
      :saler_id => "description"
    )
    
  end

  # ==========================================================
  # test amount purchaser_id
  # ==========================================================
  
  test "purchaser_id should be exists" do
    @order.purchaser_id = nil
    assert_not @order.valid?
  end
  
  # ==========================================================
  # test amount saler_id
  # ==========================================================
  
  test "saler_id should be exists" do
    @order.saler_id = nil
    assert_not @order.valid?
  end
  
  # ==========================================================
  # test amount total_price
  # ==========================================================
  
  test "total_price should be 0" do
    assert @order.total_price == 0
  end
  
  test "total_price should be exists" do
    @order.total_price = nil
    assert_not @order.valid?
  end
  
  test "total_price should be integer" do
    @order.total_price = "text"
    assert_not @order.valid?
  end
  
  # ==========================================================
  # test amount total_pv
  # ==========================================================
  
  test "total_pv should be 0" do
    assert @order.total_pv == 0
  end
  
  test "total_pv should be exists" do
    @order.total_pv = nil
    assert_not @order.valid?
  end
  
  test "total_pv should be integer" do
    @order.total_pv = "text"
    assert_not @order.valid?
  end
end
