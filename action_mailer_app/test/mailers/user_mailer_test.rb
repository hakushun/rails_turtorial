require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  def welcome
    UserMailer.with(to: "igarashi@example.com", name: "igaiga").welcome
  end
end
