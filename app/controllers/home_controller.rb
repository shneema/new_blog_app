class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  	@portfolios = Portfolio.all
  end
end
