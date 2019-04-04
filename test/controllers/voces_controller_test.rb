require 'test_helper'

class VocesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voces_index_url
    assert_response :success
  end

end
