require "application_system_test_case"

class TagListsTest < ApplicationSystemTestCase
  setup do
    @tag_list = tag_lists(:one)
  end

  test "visiting the index" do
    visit tag_lists_url
    assert_selector "h1", text: "Tag Lists"
  end

  test "creating a Tag list" do
    visit tag_lists_url
    click_on "New Tag List"

    fill_in "Tag", with: @tag_list.tag_id
    fill_in "Title", with: @tag_list.title_id
    click_on "Create Tag list"

    assert_text "Tag list was successfully created"
    click_on "Back"
  end

  test "updating a Tag list" do
    visit tag_lists_url
    click_on "Edit", match: :first

    fill_in "Tag", with: @tag_list.tag_id
    fill_in "Title", with: @tag_list.title_id
    click_on "Update Tag list"

    assert_text "Tag list was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag list" do
    visit tag_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag list was successfully destroyed"
  end
end
