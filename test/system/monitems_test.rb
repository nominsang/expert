require "application_system_test_case"

class MonitemsTest < ApplicationSystemTestCase
  setup do
    @monitem = monitems(:one)
  end

  test "visiting the index" do
    visit monitems_url
    assert_selector "h1", text: "Monitems"
  end

  test "should create monitem" do
    visit monitems_url
    click_on "New monitem"

    fill_in "Alias name", with: @monitem.alias_name
    fill_in "Biographical text", with: @monitem.biographical_text
    fill_in "Birthplace", with: @monitem.birthplace
    fill_in "Item", with: @monitem.item_id
    fill_in "Name", with: @monitem.name
    fill_in "Nation", with: @monitem.nation
    fill_in "Occupation", with: @monitem.occupation
    click_on "Create Monitem"

    assert_text "Monitem was successfully created"
    click_on "Back"
  end

  test "should update Monitem" do
    visit monitem_url(@monitem)
    click_on "Edit this monitem", match: :first

    fill_in "Alias name", with: @monitem.alias_name
    fill_in "Biographical text", with: @monitem.biographical_text
    fill_in "Birthplace", with: @monitem.birthplace
    fill_in "Item", with: @monitem.item_id
    fill_in "Name", with: @monitem.name
    fill_in "Nation", with: @monitem.nation
    fill_in "Occupation", with: @monitem.occupation
    click_on "Update Monitem"

    assert_text "Monitem was successfully updated"
    click_on "Back"
  end

  test "should destroy Monitem" do
    visit monitem_url(@monitem)
    click_on "Destroy this monitem", match: :first

    assert_text "Monitem was successfully destroyed"
  end
end
