require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "User", with: @post.User
    fill_in "Body", with: @post.body
    fill_in "Comment", with: @post.comment
    fill_in "Contact", with: @post.contact
    fill_in "Content", with: @post.content
    fill_in "Email", with: @post.email
    fill_in "First name", with: @post.first_name
    fill_in "Last name", with: @post.last_name
    fill_in "Name", with: @post.name
    fill_in "Skill", with: @post.skill
    fill_in "Team", with: @post.team
    fill_in "Title", with: @post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "User", with: @post.User
    fill_in "Body", with: @post.body
    fill_in "Comment", with: @post.comment
    fill_in "Contact", with: @post.contact
    fill_in "Content", with: @post.content
    fill_in "Email", with: @post.email
    fill_in "First name", with: @post.first_name
    fill_in "Last name", with: @post.last_name
    fill_in "Name", with: @post.name
    fill_in "Skill", with: @post.skill
    fill_in "Team", with: @post.team
    fill_in "Title", with: @post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
