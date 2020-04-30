class CommentsController < ApplicationController
  before_action :find_comment, only: %i[edit destroy update]

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

  def edit
    @portfolio = Portfolio.find(@comment.portfolio_id)
    respond_to do |format|
      format.js
    end
  end

  def update
    @comments = Comment.all
    respond_to do |format|
      if @comment.update!(comment_params)
        format.js
      end
    end
  end

  def destroy
    @comments = Comment.all
    @comment.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment, :portfolio_id).merge(user: current_user)
  end	
end
