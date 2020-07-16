class UserMailer < ApplicationMailer
	before_action :get_params_and_send_mail, only: %i(account_update_email publish_unpublish_email)
  # default from: 'notifications@example.com'
   
  def account_update_email; end

  def publish_unpublish_email; end

  private

  def get_params_and_send_mail
    @user = params[:user]
  	@args = params[:args]
  	mail(to: @user.email, subject: params[:subject])
  end
end
