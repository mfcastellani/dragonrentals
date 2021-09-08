require "application_system_test_case"

class DragonsTest < ApplicationSystemTestCase
  setup do
    @dragon = dragons(:one)
  end

  test "visiting the index" do
    visit dragons_url
    assert_selector "h1", text: "Dragons"
  end

  test "creating a Dragon" do
    visit dragons_url
    click_on "New Dragon"

    fill_in "Birth date", with: @dragon.birth_date
    fill_in "Characteristics", with: @dragon.characteristics
    fill_in "Color", with: @dragon.color
    fill_in "Name", with: @dragon.name
    click_on "Create Dragon"

    assert_text "Dragon was successfully created"
    click_on "Back"
  end

  test "updating a Dragon" do
    visit dragons_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @dragon.birth_date
    fill_in "Characteristics", with: @dragon.characteristics
    fill_in "Color", with: @dragon.color
    fill_in "Name", with: @dragon.name
    click_on "Update Dragon"

    assert_text "Dragon was successfully updated"
    click_on "Back"
  end

  test "destroying a Dragon" do
    visit dragons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dragon was successfully destroyed"
  end
end
