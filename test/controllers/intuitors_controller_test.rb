require 'test_helper'

class IntuitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intuitor = intuitors(:one)
  end

  test "should get index" do
    get intuitors_url
    assert_response :success
  end

  test "should get new" do
    get new_intuitor_url
    assert_response :success
  end

  test "should create intuitor" do
    assert_difference('Intuitor.count') do
      post intuitors_url, params: { intuitor: { description: @intuitor.description, diploma: @intuitor.diploma, first_name: @intuitor.first_name, last_name: @intuitor.last_name, photo: @intuitor.photo, website: @intuitor.website } }
    end

    assert_redirected_to intuitor_url(Intuitor.last)
  end

  test "should show intuitor" do
    get intuitor_url(@intuitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_intuitor_url(@intuitor)
    assert_response :success
  end

  test "should update intuitor" do
    patch intuitor_url(@intuitor), params: { intuitor: { description: @intuitor.description, diploma: @intuitor.diploma, first_name: @intuitor.first_name, last_name: @intuitor.last_name, photo: @intuitor.photo, website: @intuitor.website } }
    assert_redirected_to intuitor_url(@intuitor)
  end

  test "should destroy intuitor" do
    assert_difference('Intuitor.count', -1) do
      delete intuitor_url(@intuitor)
    end

    assert_redirected_to intuitors_url
  end
end
