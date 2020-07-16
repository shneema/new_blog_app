class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(current_user)
    current_user.admin? ? admin_portfolios_path : portfolios_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name image])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name
                                                                last_name image])
    devise_parameter_sanitizer.permit(:invite, keys: [:email])
    devise_parameter_sanitizer.permit(:accept_invitation, keys:
    %i[invitation_token password password_confirmation first_name last_name
       email image])
  end
end
