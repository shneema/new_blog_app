module UsersHelper
  def block_unblock(user, value, btncls)
    link_to value, admin_user_path(user, value: value), class: "btn btn-#{btncls}", method: :patch, remote: true
  end
end
