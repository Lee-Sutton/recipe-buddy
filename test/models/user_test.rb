require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "lmsutton", password: "password",
                     password_confirmation: "password",
                     email: "leesutton1@gmail.com")
  end

  # test "password should be present" do
  #   @user.password = @user.password_confirmation = " " * 6
  #   assert_not @user.valid?
  # end
end
