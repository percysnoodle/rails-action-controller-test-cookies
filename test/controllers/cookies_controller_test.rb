require 'test_helper'

class CookiesControllerTest < ActionController::TestCase
  test "the truth" do
    get :index
    assert_equal(response.body, "nil")

    get :index, params: { parameter: "value" }
    assert_equal(response.body, "value")

    get :index
    assert_equal(response.body, "value")

    get :index, params: { forget: true }
    assert_equal(response.body, "nil")

    get :index
    assert_equal(response.body, "nil") # this is where it fails
  end
end
