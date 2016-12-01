require 'test_helper'

class ExhibitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exhibit = exhibits(:one)
  end

  test "should get index" do
    get exhibits_url
    assert_response :success
  end

  test "should get new" do
    get new_exhibit_url
    assert_response :success
  end

  test "should create exhibit" do
    assert_difference('Exhibit.count') do
      post exhibits_url, params: { exhibit: { content: @exhibit.content, location: @exhibit.location } }
    end

    assert_redirected_to exhibit_url(Exhibit.last)
  end

  test "should show exhibit" do
    get exhibit_url(@exhibit)
    assert_response :success
  end

  test "should get edit" do
    get edit_exhibit_url(@exhibit)
    assert_response :success
  end

  test "should update exhibit" do
    patch exhibit_url(@exhibit), params: { exhibit: { content: @exhibit.content, location: @exhibit.location } }
    assert_redirected_to exhibit_url(@exhibit)
  end

  test "should destroy exhibit" do
    assert_difference('Exhibit.count', -1) do
      delete exhibit_url(@exhibit)
    end

    assert_redirected_to exhibits_url
  end
end
