require 'test_helper'

class CartTest < ActiveSupport::TestCase
  fixtures :carts

  test "add_product" do
    # add duplicate product
    item = carts(:khangal).add_product(products(:ruby))
    assert_equal item.quantity, 2, "should increase quantity"
    assert_equal item.price, products(:ruby).price * 2, "price should double"
    item = carts(:khangal).add_product(products(:one))
    assert_equal item.quantity, 1, "shouldn't increase quantity"
    assert_equal item.price, products(:one).price, "price shouldn't change"
  end
end
