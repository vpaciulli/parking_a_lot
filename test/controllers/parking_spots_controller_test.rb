require 'test_helper'

class ParkingSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parking_spots_index_url
    assert_response :success
  end

end
