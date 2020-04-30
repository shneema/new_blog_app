module PortfoliosHelper
  def published_unpublished(portfolio, value, btncls)	
    link_to value, admin_portfolio_path(portfolio, value: value), class: "btn btn-#{btncls}", remote: true, method: :patch
  end
end
