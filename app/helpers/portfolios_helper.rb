module PortfoliosHelper
  def published_unpublished(portfolio, value, btncls)	
    link_to value, publish_unpublish_portfolio_admin_portfolio_path(portfolio, value: value), class: "btn btn-#{btncls} float-right", remote: true, method: :patch
  end

  def jumbotron(value)
    render "shared/jumbotron", value: value
  end
  
  def image(index, size)
    render "shared/image", index: index, size: size
  end

  def video(portfolio)
    render "shared/video", portfolio: portfolio
  end

  def show_path(portfolio)
    if user_signed_in?
      admin_portfolio_path(portfolio) if current_user.admin? 
    else
      portfolio_path(portfolio)
    end 
  end
end
