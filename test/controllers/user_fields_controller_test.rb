require "test_helper"

class UserFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_field = user_fields(:one)
  end

  test "should get index" do
    get user_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_user_field_url
    assert_response :success
  end

  test "should create user_field" do
    assert_difference('UserField.count') do
      post user_fields_url, params: { user_field: { city: @user_field.city, date_birth: @user_field.date_birth, email: @user_field.email, first_name: @user_field.first_name, last_name: @user_field.last_name } }
    end

    assert_redirected_to user_field_url(UserField.last)
  end

  test "should show user_field" do
    get user_field_url(@user_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_field_url(@user_field)
    assert_response :success
  end

  test "should update user_field" do
    patch user_field_url(@user_field), params: { user_field: { city: @user_field.city, date_birth: @user_field.date_birth, email: @user_field.email, first_name: @user_field.first_name, last_name: @user_field.last_name } }
    assert_redirected_to user_field_url(@user_field)
  end

  test "should destroy user_field" do
    assert_difference('UserField.count', -1) do
      delete user_field_url(@user_field)
    end

    assert_redirected_to user_fields_url
  end
end
