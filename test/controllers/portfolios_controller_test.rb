require 'test_helper'

class PortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio = portfolios(:one)
  end

  test "should get index" do
    get portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_url
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post portfolios_url, params: { portfolio: { text1: @portfolio.text1, text10: @portfolio.text10, text11: @portfolio.text11, text12: @portfolio.text12, text13: @portfolio.text13, text14: @portfolio.text14, text15: @portfolio.text15, text16: @portfolio.text16, text17: @portfolio.text17, text2: @portfolio.text2, text3: @portfolio.text3, text4: @portfolio.text4, text5: @portfolio.text5, text6: @portfolio.text6, text7: @portfolio.text7, text8: @portfolio.text8, text9: @portfolio.text9 } }
    end

    assert_redirected_to portfolio_url(Portfolio.last)
  end

  test "should show portfolio" do
    get portfolio_url(@portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_url(@portfolio)
    assert_response :success
  end

  test "should update portfolio" do
    patch portfolio_url(@portfolio), params: { portfolio: { text1: @portfolio.text1, text10: @portfolio.text10, text11: @portfolio.text11, text12: @portfolio.text12, text13: @portfolio.text13, text14: @portfolio.text14, text15: @portfolio.text15, text16: @portfolio.text16, text17: @portfolio.text17, text2: @portfolio.text2, text3: @portfolio.text3, text4: @portfolio.text4, text5: @portfolio.text5, text6: @portfolio.text6, text7: @portfolio.text7, text8: @portfolio.text8, text9: @portfolio.text9 } }
    assert_redirected_to portfolio_url(@portfolio)
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete portfolio_url(@portfolio)
    end

    assert_redirected_to portfolios_url
  end
end
