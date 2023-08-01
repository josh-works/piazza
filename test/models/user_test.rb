require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'requires a name' do
    @user = User.new(
      name: "", 
      email: "johndoe@example.com",
      password: "1234567890ab"
    )
    assert_not @user.valid?

    @user.name = "Josh"
    assert @user.valid?
  end

  test 'requires a valid email' do
    @user = User.new(
      name: "Josh", 
      email: "",
      password: "1234567890ab"
    )
    assert_not @user.valid?

    @user.email = "example@example.com"
    assert @user.valid?
  end

  test 'requires a unique email' do
    @existing_user = User.create(
      name: "Josh", 
      email: "example@example.com",
      password: "1234567890ab"
    )
    assert @existing_user.persisted?
    
    @dup_email_user = User.new(
      name: "Josh", 
      email: "example@example.com",
      password: "1234567890ab"
    )
    
    assert_not @dup_email_user.valid?
  end

  test "name and email stripped of spaces before saving" do
    @user = User.create(
      name: " josh ",
      email: " joshthompson@example.com ",
      password: "1234567890ab"
    )

    assert_equal "josh", @user.name
    assert_equal "joshthompson@example.com", @user.email
  end  
end
