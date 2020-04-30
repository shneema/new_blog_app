module Admin
  class PortfoliosController < AdminController
  	def index
      @portfolios = Portfolio.unscoped.all
  	end

  	def update
  	  @portfolio = Portfolio.unscoped.find(params[:id])
  	  if (params[:value] == 'publish')
  	  	args = true
  	  	message = "published"
  	  else
  	  	args = false
  	  	message = "unpublished"
  	  end

  	  respond_to do |format|
	  	  if @portfolio.update(published: args)
	  	  	flash[:notice] = "Published #{message}........."
	  	  end
	  	  format.js
	  	end
  	end
  end
end