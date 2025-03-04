require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  test "in_stock" do
    mail = ProductMailer.with(product: products(:tshirt), subscriber: subscribers(:david)).in_stock
    assert_equal "In stock", mail.subject
    assert_equal [ "david@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Good news!", mail.body.encoded
  end
end







# class ProductMailerTest < ActionMailer::TestCase
#   test "in_stock" do
#     mail = ProductMailer.in_stock
#     assert_equal "In stock", mail.subject
#     assert_equal [ "to@example.org" ], mail.to
#     assert_equal [ "from@example.com" ], mail.from
#     assert_match "Hi", mail.body.encoded
#   end
# end
