require "application_system_test_case"

class MovingsTest < ApplicationSystemTestCase
  setup do
    @moving = movings(:one)
  end

  test "visiting the index" do
    visit movings_url
    assert_selector "h1", text: "Movings"
  end

  test "creating a Moving" do
    visit movings_url
    click_on "New Moving"

    fill_in "Comment", with: @moving.comment
    fill_in "Count", with: @moving.count
    fill_in "Price", with: @moving.price
    fill_in "Product", with: @moving.product
    fill_in "Shipment", with: @moving.shipment
    click_on "Create Moving"

    assert_text "Moving was successfully created"
    click_on "Back"
  end

  test "updating a Moving" do
    visit movings_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @moving.comment
    fill_in "Count", with: @moving.count
    fill_in "Price", with: @moving.price
    fill_in "Product", with: @moving.product
    fill_in "Shipment", with: @moving.shipment
    click_on "Update Moving"

    assert_text "Moving was successfully updated"
    click_on "Back"
  end

  test "destroying a Moving" do
    visit movings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moving was successfully destroyed"
  end
end
