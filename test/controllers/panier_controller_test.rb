require 'test_helper'

class PanierControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
