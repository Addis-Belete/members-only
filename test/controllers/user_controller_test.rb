require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test 'should get ind' do
    get user_ind_url
    assert_response :success
  end
end
