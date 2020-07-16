module ApplicationHelper
  include Pagy::Frontend

  def add_extra_class
  	'text-primary' if ViewCount.exists?(user_id: current_user)
  end

  def path
  	request.path
  end

  def admin
    current_user.admin?
  end

  def check_path?(value)
  	path.eql?("/users/#{value}")
  end

  def path_include?(value)
  	path.include? value
  end

  def condition
    check_path?('confirmation/new') or check_path?('sign_in') or check_path?('sign_up') or check_path?('password/new') or path_include?('/users/password/edit')
  end

  def pagynav
    pagy_bootstrap_nav(@pagy).html_safe
  end

  def add_portfolio_path
    admin ? new_admin_portfolio_path : new_portfolio_path
  end

  def user_profile_path
    admin ? admin_user_path(current_user.id) : user_path(current_user.id)
  end
end
