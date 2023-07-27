require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'requires a name' do
    @user = User.new(name: "", email: "johndoe@example.com")
    assert_not @user.valid?

    @user.name = "Josh"
    assert @user.valid?
  end

  
end
