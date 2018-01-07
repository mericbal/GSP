require 'test_helper'

class MonthlyMailerTest < ActionMailer::TestCase
  test "new_monthly" do
    mail = MonthlyMailer.new_monthly
    assert_equal "New monthly", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
