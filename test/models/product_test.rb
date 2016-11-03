require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   def setup
      @product = Product.new(
         :name => "name1",
         :description => "description",
         :price => 10,
         :pv => 0,
         :quantity => 0,
         :unit => "112")
   end
  
   test "Default Object should valid" do
     assert @product.valid?
   end
   
   # ==========================================================
   # test amount name
   # ==========================================================
   
   test "name should exists" do
      @product.name = nil
      assert_not @product.valid?
   end

   
   test "name should unique" do
      print @product.name
      @product2 = Product.new(
         :name => "name1",
         :description => "description",
         :price => 10,
         :pv => 0,
         :quantity => 0,
         :unit => "112")
      @product2.save
      print @product2.name
      assert_not @product2.save.valid?
   end
   
      # ==========================================================
   # test amount price
   # ==========================================================
   
   test "price should exists" do
      @product.price = nil
      assert_not @product.valid?
   end

   
   test "price should unique" do

   end
   
end
