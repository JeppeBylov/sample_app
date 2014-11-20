require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  # test "should be valid" do
  #   assert @micropost.valid?
  # end

  # test "user id should be present" do
  #   @micropost.user_id = nil
  #   assert_not @micropost.valid?
  # end

  test "order should be most recent first" do
    assert_equal Micropost.first, microposts(:most_recent)
  end

  test "associated microposts should be destroyed" do
    @user.save
    @user.microposts.create!(content: "lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end
end
