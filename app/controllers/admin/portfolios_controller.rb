module Admin
  class PortfoliosController < AdminController
    include Portfolable

  	def index
      @pagy, @portfolios = pagy(Portfolio.unscoped.all, items: 5)
  	end

  	def publish_unpublish_portfolio
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
          UserMailer.with(user: @portfolio.user, args: args, subject: 'Regarding Posted Article').publish_unpublish_email.deliver_now
	  	  	flash[:notice] = "Published #{message}........."
	  	  end
	  	  format.js
	  	end
  	end

    private

    def redirect_path(portfolio)
      admin_portfolio_path(portfolio)
    end
  end
end