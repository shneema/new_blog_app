class CommentsController < ApplicationController

  def new
  	@portfolio = Portfolio.find(params[:portfolio_id])
  	@comment = current_user.comments.new
  end

  def create
  	@comment = current_user.comments.new(comment_params)
  	if @comment.save
  	  redirect_to portfolio_path(params[:comment][:portfolio_id])
  	end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end	
end
