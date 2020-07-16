module Portfolable
  extend ActiveSupport::Concern

  included do
  	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  end	

  def show
    ViewCount.find_or_create_by(user_id: current_user.id, portfolio_id: @portfolio.id) if user_signed_in?
    @comments = @portfolio.comments
  end

  def new
    @portfolio = current_user.portfolios.new
  end

  def edit; end

  def create
    @portfolio = current_user.portfolios.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to redirect_path(@portfolio), notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to redirect_path(@portfolio), notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:sub_heading1, :sub_heading2, :video_heading, :image_heading, :text1, :text2, :text3, :text4, :text5, :text6, :text7, :text8, :text9, :text10, :text11, :text12, :text13, :text14, :text15, :text16, :text17, :heading, :sub_head1, :sub_head2, :sub_head3, :sub_head4, :sub_head5, :sub_head6, :sub_head7, :sub_head8, :sub_head9, :sub_head10, :sub_head11, :sub_head12, :sub_head13, :sub_head14, :sub_head15, :sub_head16, :sub_head17, images: [], videos: [])
  end
end