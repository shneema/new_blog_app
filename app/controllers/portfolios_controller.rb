class PortfoliosController < ApplicationController
  include Portfolable
  skip_before_action :authenticate_user!, only: %i(index show)

  def index
    if user_signed_in?
     @pagy, @portfolios = pagy(Portfolio.all, items: 5)
    else
      redirect_to action: 'show', id: rand(1..Portfolio.count)
    end
  end

  private

  def redirect_path(portfolio)
    portfolio_path(portfolio)
  end
end
