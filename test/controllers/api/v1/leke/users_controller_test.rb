require 'test_helper'

class Api::V1::Leke::UsersControllerTest < ActionController::TestCase
  test "should get partner" do
    get :partner
    assert_response :success
  end

end
