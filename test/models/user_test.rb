require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'requires a name' do
    @user = User.new(name: "", email: "johndoe@example.com")
    assert_not @user.valid?

    @user.name = "Josh"
    assert @user.valid?
  end

  test 'requires a valid email' do
    @user = User.new(name: "Josh", email: "")
    assert_not @user.valid?

    @user.email = "example@example.com"
    assert @user.valid?
  end

  test 'requires a unique email' do
    @existing_user = User.create(
      name: "Josh", email: "example@example.com"
    )
    assert @existing_user.persisted?
    
    @dup_email_user = User.new(name: "Josh", email: "example@example.com")
    
    assert_not @dup_email_user.valid?
  end

  
end
