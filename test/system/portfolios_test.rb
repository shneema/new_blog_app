require "application_system_test_case"

class PortfoliosTest < ApplicationSystemTestCase
  setup do
    @portfolio = portfolios(:one)
  end

  test "visiting the index" do
    visit portfolios_url
    assert_selector "h1", text: "Portfolios"
  end

  test "creating a Portfolio" do
    visit portfolios_url
    click_on "New Portfolio"

    fill_in "Text1", with: @portfolio.text1
    fill_in "Text10", with: @portfolio.text10
    fill_in "Text11", with: @portfolio.text11
    fill_in "Text12", with: @portfolio.text12
    fill_in "Text13", with: @portfolio.text13
    fill_in "Text14", with: @portfolio.text14
    fill_in "Text15", with: @portfolio.text15
    fill_in "Text16", with: @portfolio.text16
    fill_in "Text17", with: @portfolio.text17
    fill_in "Text2", with: @portfolio.text2
    fill_in "Text3", with: @portfolio.text3
    fill_in "Text4", with: @portfolio.text4
    fill_in "Text5", with: @portfolio.text5
    fill_in "Text6", with: @portfolio.text6
    fill_in "Text7", with: @portfolio.text7
    fill_in "Text8", with: @portfolio.text8
    fill_in "Text9", with: @portfolio.text9
    click_on "Create Portfolio"

    assert_text "Portfolio was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio" do
    visit portfolios_url
    click_on "Edit", match: :first

    fill_in "Text1", with: @portfolio.text1
    fill_in "Text10", with: @portfolio.text10
    fill_in "Text11", with: @portfolio.text11
    fill_in "Text12", with: @portfolio.text12
    fill_in "Text13", with: @portfolio.text13
    fill_in "Text14", with: @portfolio.text14
    fill_in "Text15", with: @portfolio.text15
    fill_in "Text16", with: @portfolio.text16
    fill_in "Text17", with: @portfolio.text17
    fill_in "Text2", with: @portfolio.text2
    fill_in "Text3", with: @portfolio.text3
    fill_in "Text4", with: @portfolio.text4
    fill_in "Text5", with: @portfolio.text5
    fill_in "Text6", with: @portfolio.text6
    fill_in "Text7", with: @portfolio.text7
    fill_in "Text8", with: @portfolio.text8
    fill_in "Text9", with: @portfolio.text9
    click_on "Update Portfolio"

    assert_text "Portfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio" do
    visit portfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio was successfully destroyed"
  end
end
