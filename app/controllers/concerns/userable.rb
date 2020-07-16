module Userable
  extend ActiveSupport::Concern

  def show
    @user = User.find(params[:id])
  end
end