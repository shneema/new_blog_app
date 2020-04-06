class LikesController < ApplicationController
  before_action :find_portfolio, only: %i[create dislike]

  def create
  	@portfolio = Portfolio.find(params[:portfolio_id])
  	# if already_liked
  	# 	flash[:alert] = 'already liked by you'
    # else
	  	@like = @portfolio.likes.create(user_id: current_user.id)
	  # end
	  # redirect_to portfolio_path(@portfolio.id)
  end

  def dislike
    @like = Like.find_by(user_id: current_user.id, portfolio_id: @portfolio.id)
    @like.destroy
    # redirect_to portfolio_path(@portfolio.id)
  end

  private

  # def already_liked
  # 	Like.liked_or_not(current_user.id, @portfolio.id).exists?
  # end

  def find_portfolio
  	@portfolio = Portfolio.find(params[:portfolio_id])
  end
end
