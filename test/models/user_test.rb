require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "lmsutton", password: "password",
                     password_confirmation: "password",
                     email: "leesutton1@gmail.com")
  end

  test "password should be present" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "email addresses should be valid" do
    @user.email = "dummy@email,com"
    assert_not @user.valid?
  end

  test "email addresses should contain a name" do
    @user.email = "@email.com"
    assert_not @user.valid?
  end

  test "email addresses should contain a host" do
    @user.email = "test@.com"
    assert_not @user.valid?
  end

  test "email addresses should contain a domain" do
    @user.email = "test@email."
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

end
