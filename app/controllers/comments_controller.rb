class CommentsController < ApplicationController

  def new
  	@portfolio = Portfolio.find(params[:portfolio_id])
  	@comment = @portfolio.comments.new
  end

  def create
    @portfolio = Portfolio.find(params[:comment][:portfolio_id])
  	@comment = @portfolio.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :portfolio_id).merge(user: current_user)
  end	
end
