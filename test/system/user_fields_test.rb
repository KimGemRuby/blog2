require "application_system_test_case"

class UserFieldsTest < ApplicationSystemTestCase
  setup do
    @user_field = user_fields(:one)
  end

  test "visiting the index" do
    visit user_fields_url
    assert_selector "h1", text: "User Fields"
  end

  test "creating a User field" do
    visit user_fields_url
    click_on "New User Field"

    fill_in "City", with: @user_field.city
    check "Date birth" if @user_field.date_birth
    fill_in "Email", with: @user_field.email
    fill_in "First name", with: @user_field.first_name
    fill_in "Last name", with: @user_field.last_name
    click_on "Create User field"

    assert_text "User field was successfully created"
    click_on "Back"
  end

  test "updating a User field" do
    visit user_fields_url
    click_on "Edit", match: :first

    fill_in "City", with: @user_field.city
    check "Date birth" if @user_field.date_birth
    fill_in "Email", with: @user_field.email
    fill_in "First name", with: @user_field.first_name
    fill_in "Last name", with: @user_field.last_name
    click_on "Update User field"

    assert_text "User field was successfully updated"
    click_on "Back"
  end

  test "destroying a User field" do
    visit user_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User field was successfully destroyed"
  end
end
