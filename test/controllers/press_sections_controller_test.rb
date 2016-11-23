require 'test_helper'

class PressSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @press_section = press_sections(:one)
  end

  test "should get index" do
    get press_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_press_section_url
    assert_response :success
  end

  test "should create press_section" do
    assert_difference('PressSection.count') do
      post press_sections_url, params: { press_section: { content: @press_section.content, nav: @press_section.nav, path: @press_section.path } }
    end

    assert_redirected_to press_section_url(PressSection.last)
  end

  test "should show press_section" do
    get press_section_url(@press_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_press_section_url(@press_section)
    assert_response :success
  end

  test "should update press_section" do
    patch press_section_url(@press_section), params: { press_section: { content: @press_section.content, nav: @press_section.nav, path: @press_section.path } }
    assert_redirected_to press_section_url(@press_section)
  end

  test "should destroy press_section" do
    assert_difference('PressSection.count', -1) do
      delete press_section_url(@press_section)
    end

    assert_redirected_to press_sections_url
  end
end
