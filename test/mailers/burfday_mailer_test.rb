require 'test_helper'

class BurfdayMailerTest < ActionMailer::TestCase
  test "burfday_reminder" do
    mail = BurfdayMailer.burfday_reminder
    assert_equal "Burfday reminder", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
