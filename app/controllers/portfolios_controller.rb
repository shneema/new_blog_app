class PortfoliosController < ApplicationController
  include Portfolable
  skip_before_action :authenticate_user!, only: %i(index show)

  def index
     @pagy, @portfolios = pagy(Portfolio.all, items: 5)
  end

  private

  def redirect_path(portfolio)
    portfolio_path(portfolio)
  end
end
